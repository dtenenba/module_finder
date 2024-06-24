help([==[

Description
===========
PatchELF is a small utility to modify the dynamic linker and RPATH of ELF executables.


More information
================
 - Homepage: https://github.com/NixOS/patchelf
]==])

whatis([==[Description: PatchELF is a small utility to modify the dynamic linker and RPATH of ELF executables.]==])
whatis([==[Homepage: https://github.com/NixOS/patchelf]==])
whatis([==[URL: https://github.com/NixOS/patchelf]==])

local root = "/app/software/patchelf/0.18.0-GCCcore-12.3.0"

conflict("patchelf")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPATCHELF", root)
setenv("EBVERSIONPATCHELF", "0.18.0")
setenv("EBDEVELPATCHELF", pathJoin(root, "logs/patchelf-0.18.0-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
