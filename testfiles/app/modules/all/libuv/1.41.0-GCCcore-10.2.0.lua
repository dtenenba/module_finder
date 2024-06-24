help([==[

Description
===========
libuv is a multi-platform support library with a focus on asynchronous I/O.


More information
================
 - Homepage: https://libuv.org
]==])

whatis([==[Description: libuv is a multi-platform support library with a focus on asynchronous I/O.]==])
whatis([==[Homepage: https://libuv.org]==])
whatis([==[URL: https://libuv.org]==])

local root = "/app/software/libuv/1.41.0-GCCcore-10.2.0"

conflict("libuv")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBUV", root)
setenv("EBVERSIONLIBUV", "1.41.0")
setenv("EBDEVELLIBUV", pathJoin(root, "logs/libuv-1.41.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
