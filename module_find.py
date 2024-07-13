#!/usr/bin/env python3

import os
import sys

foss_versions = ['2023b', '2023a', '2022b', '2022a', '2021b', '2021a', '2020b', '2020a', '2019b', '2019a', '2018b', '2016b']
gcc_versions = ['13.2.0', '12.3.0', '12.2.0', '11.3.0', '11.2.0', '10.3.0', '10.2.0', '9.3.0', '8.3.0', '8.2.0', '7.3.0', '5.4.0']
foss2gcc = dict(zip(foss_versions, gcc_versions))
gcc2foss = dict(zip(gcc_versions, foss_versions))

def parse_module_line(line):
    parts = line.strip().split('/')
    if len(parts) == 2:
        name, toolchain = parts[0], parts[1]
        return name, toolchain
    elif len(parts) == 1:
        name = parts[0]
        return name, None
    return None, None

def get_module_names():
    base_dir = os.getenv("MODULE_BASE_DIR", "/")
    if not base_dir.endswith("/"):
        base_dir += "/"
    base_dir += "app/modules/all/"
    if not (os.path.exists(base_dir)  and os.path.isdir(base_dir)):
        raise FileNotFoundError(f"Directory {base_dir} not found or not a directory" )
    ret = []
    for entry in os.scandir(base_dir):
        if entry.is_dir():
            for subentry in os.scandir(entry.path):
                if subentry.is_file() and subentry.name.endswith(".lua"):
                    ret.append(f"{entry.name}/{subentry.name.replace('.lua', '')}")
    return ret

def load_modules():
    modules = {}
    original_names = {}  # Dictionary to store the original casing
    for module_name in get_module_names():
        name, toolchain = parse_module_line(module_name)
        if name:
            lower_name = name.lower()
            if lower_name not in modules:
                modules[lower_name] = []
                original_names[lower_name] = name  # Store the original name
            modules[lower_name].append(toolchain)
    return modules, original_names

def equivalent_toolchains(toolchain):
    equivalents = set()
    if toolchain is None:
        return equivalents
    for foss in foss_versions:
        if foss in toolchain:
            equivalents.update([f"foss-{foss}", f"gompi-{foss}", f"gfbf-{foss}", f"GCCcore-{foss2gcc[foss]}"])
    for gcc in gcc_versions:
        if gcc in toolchain:
            equivalents.update([f"GCCcore-{gcc}", f"GCC-{gcc}", f"foss-{gcc2foss[gcc]}", f"gompi-{gcc2foss[gcc]}", f"gfbf-{gcc2foss[gcc]}"])
    return equivalents

def find_compatible_modules(module_names, modules, original_names):
    compatible_toolchains = {name.lower(): set() for name in module_names}
    
    for name in module_names:
        lower_name = name.lower()
        if lower_name in modules:
            for toolchain in modules[lower_name]:
                equivalents = equivalent_toolchains(toolchain)
                if equivalents:
                    compatible_toolchains[lower_name].update(equivalents)
                else:
                    compatible_toolchains[lower_name].add(None)
    
    common_toolchains = set.intersection(*(t for t in compatible_toolchains.values() if t))
    
    if not common_toolchains:
        return []

    def sort_key(toolchain):
        if toolchain is None:
            return -1
        version = toolchain.split('-')[-1]
        if 'GCCcore' in toolchain or 'GCC' in toolchain:
            return gcc_versions.index(version)
        else:
            return foss_versions.index(version)
    
    most_recent_toolchain = sorted(common_toolchains, key=sort_key)[0]

    result = []
    for name in module_names:
        lower_name = name.lower()
        if lower_name not in modules:
            continue
        for toolchain in modules[lower_name]:
            if most_recent_toolchain is None or toolchain is None or most_recent_toolchain in equivalent_toolchains(toolchain):
                original_name = original_names[lower_name]  # Retrieve the original name for output
                result.append(f"{original_name}/{toolchain}" if toolchain else f"{original_name}")
                break
    
    return result

def main():
    if len(sys.argv) < 2:
        print("Usage: module_find <module1> <module2> ... <moduleN>")
        sys.exit(1)
        
    module_names = sys.argv[1:]
    modules, original_names = load_modules()
    compatible_modules = find_compatible_modules(module_names, modules, original_names)
    
    if compatible_modules:
        for module in compatible_modules:
            print(module)
    else:
        print("No compatible modules found.")

if __name__ == "__main__":
    main()
