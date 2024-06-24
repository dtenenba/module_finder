help([==[

Description
===========
The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL.


More information
================
 - Homepage: ftp://ftp.freedesktop.org/pub/mesa/glu/
]==])

whatis([==[Description: The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL. ]==])
whatis([==[Homepage: ftp://ftp.freedesktop.org/pub/mesa/glu/]==])
whatis([==[URL: ftp://ftp.freedesktop.org/pub/mesa/glu/]==])

local root = "/app/software/libGLU/9.0.1-GCCcore-9.3.0"

conflict("libGLU")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("Mesa/20.0.2-GCCcore-9.3.0") ) then
    load("Mesa/20.0.2-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLU", root)
setenv("EBVERSIONLIBGLU", "9.0.1")
setenv("EBDEVELLIBGLU", pathJoin(root, "logs/libGLU-9.0.1-GCCcore-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
