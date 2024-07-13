package main

import (
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strings"

	"github.com/spf13/cobra"
)

var (
	fossVersions = []string{"2023b", "2023a", "2022b", "2022a", "2021b", "2021a", "2020b", "2020a", "2019b", "2019a", "2018b", "2016b"}
	gccVersions  = []string{"13.2.0", "12.3.0", "12.2.0", "11.3.0", "11.2.0", "10.3.0", "10.2.0", "9.3.0", "8.3.0", "8.2.0", "7.3.0", "5.4.0"}
	foss2gcc     = make(map[string]string)
	gcc2foss     = make(map[string]string)
	baseDir      string
)

func init() {
	for i, foss := range fossVersions {
		foss2gcc[foss] = gccVersions[i]
		gcc2foss[gccVersions[i]] = foss
	}
}

func parseModuleLine(line string) (string, string) {
	parts := strings.Split(line, "/")
	if len(parts) == 2 {
		return parts[0], parts[1]
	} else if len(parts) == 1 {
		return parts[0], ""
	}
	return "", ""
}

func getModuleNames(baseDir string) ([]string, error) {
	if !strings.HasSuffix(baseDir, "/") {
		baseDir += "/"
	}
	baseDir += "app/modules/all/"
	if stat, err := os.Stat(baseDir); os.IsNotExist(err) || !stat.IsDir() {
		return nil, fmt.Errorf("directory %s not found or not a directory", baseDir)
	}

	var moduleNames []string
	err := filepath.Walk(baseDir, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		if !info.IsDir() && strings.HasSuffix(info.Name(), ".lua") {
			moduleName := filepath.Base(filepath.Dir(path)) + "/" + strings.TrimSuffix(info.Name(), ".lua")
			moduleNames = append(moduleNames, moduleName)
		}
		return nil
	})
	return moduleNames, err
}

func loadModules(baseDir string) (map[string][]string, map[string]string, error) {
	modules := make(map[string][]string)
	originalNames := make(map[string]string)

	moduleNames, err := getModuleNames(baseDir)
	if err != nil {
		return nil, nil, err
	}

	for _, moduleName := range moduleNames {
		name, toolchain := parseModuleLine(moduleName)
		if name != "" {
			lowerName := strings.ToLower(name)
			if _, exists := modules[lowerName]; !exists {
				modules[lowerName] = []string{}
				originalNames[lowerName] = name
			}
			modules[lowerName] = append(modules[lowerName], toolchain)
		}
	}
	return modules, originalNames, nil
}

func equivalentToolchains(toolchain string) map[string]bool {
	equivalents := make(map[string]bool)
	if toolchain == "" {
		return equivalents
	}
	for _, foss := range fossVersions {
		if strings.Contains(toolchain, foss) {
			equivalents["foss-"+foss] = true
			equivalents["gompi-"+foss] = true
			equivalents["gfbf-"+foss] = true
			equivalents["GCCcore-"+foss2gcc[foss]] = true
		}
	}
	for _, gcc := range gccVersions {
		if strings.Contains(toolchain, gcc) {
			equivalents["GCCcore-"+gcc] = true
			equivalents["GCC-"+gcc] = true
			equivalents["foss-"+gcc2foss[gcc]] = true
			equivalents["gompi-"+gcc2foss[gcc]] = true
			equivalents["gfbf-"+gcc2foss[gcc]] = true
		}
	}
	return equivalents
}

func isSemVer(version string) bool {
	semverRegex := regexp.MustCompile(`^\d+\.\d+\.\d+$`)
	return semverRegex.MatchString(version)
}

func findMostRecentVersion(versions []string) string {
	sort.Slice(versions, func(i, j int) bool {
		return compareVersions(versions[i], versions[j])
	})
	return versions[len(versions)-1]
}

func compareVersions(v1, v2 string) bool {
	v1Parts := strings.Split(v1, ".")
	v2Parts := strings.Split(v2, ".")

	for i := 0; i < len(v1Parts) && i < len(v2Parts); i++ {
		if v1Parts[i] != v2Parts[i] {
			return v1Parts[i] < v2Parts[i]
		}
	}
	return len(v1Parts) < len(v2Parts)
}

func findCompatibleModules(moduleNames []string, modules map[string][]string, originalNames map[string]string) []string {
	compatibleToolchains := make(map[string]map[string]bool)
	modulesWithoutToolchains := make(map[string]string)

	for _, name := range moduleNames {
		lowerName := strings.ToLower(name)
		compatibleToolchains[lowerName] = make(map[string]bool)
		if toolchains, exists := modules[lowerName]; exists {
			if len(toolchains) == 1 && toolchains[0] == "" {
				modulesWithoutToolchains[lowerName] = originalNames[lowerName]
				continue
			}
			for _, toolchain := range toolchains {
				for eq := range equivalentToolchains(toolchain) {
					compatibleToolchains[lowerName][eq] = true
				}
			}
		}
	}

	commonToolchains := make(map[string]bool)
	first := true
	for _, toolchains := range compatibleToolchains {
		if len(toolchains) == 0 {
			continue
		}
		if first {
			for k := range toolchains {
				commonToolchains[k] = true
			}
			first = false
		} else {
			for k := range commonToolchains {
				if !toolchains[k] {
					delete(commonToolchains, k)
				}
			}
		}
	}

	if len(commonToolchains) == 0 {
		return []string{}
	}

	sortedToolchains := make([]string, 0, len(commonToolchains))
	for toolchain := range commonToolchains {
		sortedToolchains = append(sortedToolchains, toolchain)
	}
	sort.Slice(sortedToolchains, func(i, j int) bool {
		vi := strings.Split(sortedToolchains[i], "-")[1]
		vj := strings.Split(sortedToolchains[j], "-")[1]
		return indexOf(vi, append(fossVersions, gccVersions...)) < indexOf(vj, append(fossVersions, gccVersions...))
	})

	mostRecentToolchain := sortedToolchains[0]
	result := []string{}
	for _, name := range moduleNames {
		lowerName := strings.ToLower(name)
		if originalName, exists := modulesWithoutToolchains[lowerName]; exists {
			var versions []string
			for _, toolchain := range modules[lowerName] {
				if toolchain == "" {
					continue
				}
				parts := strings.Split(toolchain, "-")
				if isSemVer(parts[0]) {
					versions = append(versions, parts[0])
				}
			}
			if len(versions) > 0 {
				result = append(result, fmt.Sprintf("%s/%s", originalName, findMostRecentVersion(versions)))
			} else {
				result = append(result, fmt.Sprintf("%s/%s", originalName, modules[lowerName][0]))
			}
			continue
		}

		if toolchains, exists := modules[lowerName]; exists {
			found := false
			for _, toolchain := range toolchains {
				if mostRecentToolchain == "" || toolchain == "" || equivalentToolchains(toolchain)[mostRecentToolchain] {
					originalName := originalNames[lowerName]
					// Ensure no leading dot in the version
					if strings.HasPrefix(toolchain, ".") {
						toolchain = toolchain[1:]
					}
					result = append(result, fmt.Sprintf("%s/%s", originalName, toolchain))
					found = true
					break
				}
			}
			if !found {
				if len(toolchains) == 1 {
					toolchain := toolchains[0]
					if strings.HasPrefix(toolchain, ".") {
						toolchain = toolchain[1:]
					}
					result = append(result, fmt.Sprintf("%s/%s", originalNames[lowerName], toolchain))
				} else {
					var versions []string
					for _, toolchain := range toolchains {
						parts := strings.Split(toolchain, "-")
						if isSemVer(parts[0]) {
							versions = append(versions, parts[0])
							if strings.HasPrefix(toolchain, ".") {
								toolchain = toolchain[1:]
							}
						}
					}
					if len(versions) > 0 {
						result = append(result, fmt.Sprintf("%s/%s", originalNames[lowerName], findMostRecentVersion(versions)))
					} else {
						result = append(result, fmt.Sprintf("%s/%s", originalNames[lowerName], toolchains[0]))
					}
				}
			}
		}
	}
	return result
}

func indexOf(element string, data []string) int {
	for i, v := range data {
		if v == element {
			return i
		}
	}
	return -1
}

func getBaseDir() string {
	baseDir := os.Getenv("MODULE_BASE_DIR")
	if baseDir == "" {
		baseDir = "/"
	}
	return baseDir
}

var rootCmd = &cobra.Command{
	Use:   "mf",
	Short: "Find and load compatible modules",
	Args:  cobra.MatchAll(cobra.MinimumNArgs(1), cobra.OnlyValidArgs),
	Run: func(cmd *cobra.Command, args []string) {
		baseDir := getBaseDir()

		modules, originalNames, err := loadModules(baseDir)
		if err != nil {
			fmt.Fprintln(os.Stderr, "Error loading modules:", err)
			os.Exit(1)
		}

		compatibleModules := findCompatibleModules(args, modules, originalNames)

		if len(compatibleModules) > 0 {
			fmt.Print("ml ")
			for i, module := range compatibleModules {
				if i > 0 {
					fmt.Print(" ")
				}
				fmt.Print(module)
			}
			fmt.Println()
		} else {
			fmt.Fprintln(os.Stderr, "No compatible modules found.")
			os.Exit(1)
		}
	},
	ValidArgsFunction: func(cmd *cobra.Command, args []string, toComplete string) ([]string, cobra.ShellCompDirective) {
		baseDir := getBaseDir()

		modules, originalNames, err := loadModules(baseDir)
		if err != nil {
			return nil, cobra.ShellCompDirectiveError
		}
		var completions []string
		for moduleName := range modules {
			if strings.HasPrefix(strings.ToLower(moduleName), strings.ToLower(toComplete)) {
				completions = append(completions, originalNames[moduleName])
			}
		}
		return completions, cobra.ShellCompDirectiveNoFileComp
	},
}

var completionCmd = &cobra.Command{
	Use:       "completion [bash|zsh|fish|powershell]",
	Short:     "Generate completion script",
	Args:      cobra.ExactValidArgs(1),
	ValidArgs: []string{"bash", "zsh", "fish", "powershell"},
	Run: func(cmd *cobra.Command, args []string) {
		var err error
		switch args[0] {
		case "bash":
			err = rootCmd.GenBashCompletion(os.Stdout)
		case "zsh":
			err = rootCmd.GenZshCompletion(os.Stdout)
		case "fish":
			err = rootCmd.GenFishCompletion(os.Stdout, true)
		case "powershell":
			err = rootCmd.GenPowerShellCompletionWithDesc(os.Stdout)
		}
		if err != nil {
			fmt.Fprintln(os.Stderr, "Error generating completion script:", err)
			os.Exit(1)
		}
	},
}

var moduleCmd = &cobra.Command{
	Use:   "modules",
	Short: "List available modules",
	Run: func(cmd *cobra.Command, args []string) {
		baseDir := getBaseDir()

		modules, _, err := loadModules(baseDir)
		if err != nil {
			fmt.Fprintln(os.Stderr, "Error loading modules:", err)
			os.Exit(1)
		}
		for moduleName := range modules {
			fmt.Println(modules[moduleName])
		}
	},
}

func main() {
	rootCmd.PersistentFlags().StringVar(&baseDir, "base-dir", "/", "Base directory for modules")
	rootCmd.AddCommand(completionCmd)
	rootCmd.AddCommand(moduleCmd)
	if err := rootCmd.Execute(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
