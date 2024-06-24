help([==[

Description
===========
libfilezilla is a small and modern C++ library, offering some basic functionality to build high-performing, platform-independent programs.


More information
================
 - Homepage: https://lib.filezilla-project.org
]==])

whatis([==[Description: libfilezilla is a small and modern C++ library, offering some basic functionality to build high-performing, platform-independent programs.]==])
whatis([==[Homepage: https://lib.filezilla-project.org]==])
whatis([==[URL: https://lib.filezilla-project.org]==])

local root = "/app/software/libfilezilla/0.40.0-GCC-11.2.0"

conflict("libfilezilla")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

if not ( isloaded("nettle/3.7.3-GCCcore-11.2.0") ) then
    load("nettle/3.7.3-GCCcore-11.2.0")
end

if not ( isloaded("GnuTLS/3.7.3-GCCcore-11.2.0") ) then
    load("GnuTLS/3.7.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBFILEZILLA", root)
setenv("EBVERSIONLIBFILEZILLA", "0.40.0")
setenv("EBDEVELLIBFILEZILLA", pathJoin(root, "logs/libfilezilla-0.40.0-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
