help([==[

Description
===========
Epoxy is a library for handling OpenGL function pointer management for you


More information
================
 - Homepage: https://github.com/anholt/libepoxy
]==])

whatis([==[Description: Epoxy is a library for handling OpenGL function pointer management for you]==])
whatis([==[Homepage: https://github.com/anholt/libepoxy]==])
whatis([==[URL: https://github.com/anholt/libepoxy]==])

local root = "/app/software/libepoxy/1.5.4-GCCcore-8.3.0"

conflict("libepoxy")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

if not ( isloaded("Mesa/19.1.7-GCCcore-8.3.0") ) then
    load("Mesa/19.1.7-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBEPOXY", root)
setenv("EBVERSIONLIBEPOXY", "1.5.4")
setenv("EBDEVELLIBEPOXY", pathJoin(root, "logs/libepoxy-1.5.4-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
