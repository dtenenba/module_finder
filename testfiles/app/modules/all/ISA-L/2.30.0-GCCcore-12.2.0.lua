help([==[

Description
===========
Intelligent Storage Acceleration Library


More information
================
 - Homepage: https://github.com/intel/isa-l
]==])

whatis([==[Description: Intelligent Storage Acceleration Library]==])
whatis([==[Homepage: https://github.com/intel/isa-l]==])
whatis([==[URL: https://github.com/intel/isa-l]==])

local root = "/app/software/ISA-L/2.30.0-GCCcore-12.2.0"

conflict("ISA-L")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("NASM/2.15.05-GCCcore-12.2.0") ) then
    load("NASM/2.15.05-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTISAMINL", root)
setenv("EBVERSIONISAMINL", "2.30.0")
setenv("EBDEVELISAMINL", pathJoin(root, "logs/ISA-L-2.30.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
