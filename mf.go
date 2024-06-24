package main

import (
	"fmt"
	"log"
	"os"
	"strings"

	"github.com/juanmanuel-tirado/savetheworldwithgo/17_cli/cobra/advanced/example_05/cmd"
	"github.com/spf13/cobra"
)

// https://fredhutch.github.io/easybuild-life-sciences/toolchains/
// At present, code needs to be updated when toolchains are added
var gccToolchains = []string{"13.2.0", "12.3.0", "12.2.0", "11.3.0", "11.2.0", "10.3.0", "10.2.0", "9.3.0", "8.3.0"}
var fossToolchains = []string{"2023b", "2023a", "2022b", "2022a", "2021b", "2021a", "2020b", "2020a", "2019b"}

var DIR = "testfiles/app/modules/all" // TODO add leading "/" on cluster

var RootCmd = &cobra.Command{
	Use:  "mf",
	Long: "Root command",
	Args: cobra.MinimumNArgs(1),
	Run: func(cmd *cobra.Command, args []string) {
		for _, module := range args {
			fmt.Printf("Processing module %s!!!\n", module)
		}
	},
	ValidArgsFunction: ModuleGet,
}

// replaceSuffix checks if 'str' ends with 'suffix' and replaces it with 'replacement' if it does.
func trimLuaSuffix(str string) string {
	if strings.HasSuffix(str, ".lua") {
		// Remove the suffix
		str = strings.TrimSuffix(str, ".lua")
	}
	return str
}

func GetModuleVersions(module string) ([]string, error) {
	// not platform-independent:
	entries, err := os.ReadDir(DIR + "/" + module)
	if err != nil {
		return nil, err
	}
	var versions []string
	for _, entry := range entries {
		if !entry.IsDir() {
			versions = append(versions, trimLuaSuffix(entry.Name()))
		}
	}
	return versions, nil
}

func GetToolchainsForModule(module string) ([]string, error) {

}

func GetEntries() ([]string, error) {
	entries, err := os.ReadDir(DIR)
	if err != nil {
		return nil, err
	}
	var dirs []string
	for _, entry := range entries {
		if entry.IsDir() {
			dirs = append(dirs, entry.Name())
		}
	}
	return dirs, nil
}

func ModuleGet(cmd *cobra.Command, args []string, toComplete string) ([]string, cobra.ShellCompDirective) {
	modules, err := GetEntries()
	if err != nil {
		log.Fatalf("Failed to read directory")
	}
	return modules, cobra.ShellCompDirectiveNoFileComp
}

func init() {
	RootCmd.AddCommand(cmd.CompletionCmd)
}

func main() {
	if err := RootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
