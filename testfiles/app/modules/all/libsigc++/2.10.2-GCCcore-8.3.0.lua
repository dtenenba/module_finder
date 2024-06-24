help([==[

Description
===========
The libsigc++ package implements a typesafe callback system for standard C++.


More information
================
 - Homepage: https://libsigcplusplus.github.io/libsigcplusplus/
]==])

whatis([==[Description: The libsigc++ package implements a typesafe callback system for standard C++.]==])
whatis([==[Homepage: https://libsigcplusplus.github.io/libsigcplusplus/]==])
whatis([==[URL: https://libsigcplusplus.github.io/libsigcplusplus/]==])

local root = "/app/software/libsigc++/2.10.2-GCCcore-8.3.0"

conflict("libsigc++")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBSIGCPLUSPLUS", root)
setenv("EBVERSIONLIBSIGCPLUSPLUS", "2.10.2")
setenv("EBDEVELLIBSIGCPLUSPLUS", pathJoin(root, "logs/libsigc++-2.10.2-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
