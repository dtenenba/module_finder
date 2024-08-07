help([==[

Description
===========
The elfutils project provides libraries and tools for ELF files
 and DWARF data.


More information
================
 - Homepage: https://elfutils.org/
]==])

whatis([==[Description: 
 The elfutils project provides libraries and tools for ELF files
 and DWARF data.
]==])
whatis([==[Homepage: https://elfutils.org/]==])
whatis([==[URL: https://elfutils.org/]==])

local root = "/app/software/elfutils/0.185-GCCcore-10.3.0"

conflict("elfutils")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("binutils/2.36.1-GCCcore-10.3.0") ) then
    load("binutils/2.36.1-GCCcore-10.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.3.0") ) then
    load("bzip2/1.0.8-GCCcore-10.3.0")
end

if not ( isloaded("libarchive/3.5.1-GCCcore-10.3.0") ) then
    load("libarchive/3.5.1-GCCcore-10.3.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.3.0") ) then
    load("XZ/5.2.5-GCCcore-10.3.0")
end

if not ( isloaded("zstd/1.4.9-GCCcore-10.3.0") ) then
    load("zstd/1.4.9-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTELFUTILS", root)
setenv("EBVERSIONELFUTILS", "0.185")
setenv("EBDEVELELFUTILS", pathJoin(root, "logs/elfutils-0.185-GCCcore-10.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
