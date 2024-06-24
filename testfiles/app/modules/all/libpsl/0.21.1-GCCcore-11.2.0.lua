help([==[

Description
===========
C library for the Public Suffix List


More information
================
 - Homepage: https://rockdaboot.github.io/libpsl
]==])

whatis([==[Description: C library for the Public Suffix List]==])
whatis([==[Homepage: https://rockdaboot.github.io/libpsl]==])
whatis([==[URL: https://rockdaboot.github.io/libpsl]==])

local root = "/app/software/libpsl/0.21.1-GCCcore-11.2.0"

conflict("libpsl")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("libidn2/2.3.2-GCCcore-11.2.0") ) then
    load("libidn2/2.3.2-GCCcore-11.2.0")
end

if not ( isloaded("libunistring/1.0-GCCcore-11.2.0") ) then
    load("libunistring/1.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBPSL", root)
setenv("EBVERSIONLIBPSL", "0.21.1")
setenv("EBDEVELLIBPSL", pathJoin(root, "logs/libpsl-0.21.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
