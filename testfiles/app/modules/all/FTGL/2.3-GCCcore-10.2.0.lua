help([==[

Description
===========
FTGL is a free open source library to enable developers to use arbitrary
fonts in their OpenGL (www.opengl.org) applications.


More information
================
 - Homepage: http://ftgl.sourceforge.net/docs/html/
]==])

whatis([==[Description:  FTGL is a free open source library to enable developers to use arbitrary
fonts in their OpenGL (www.opengl.org) applications. ]==])
whatis([==[Homepage: http://ftgl.sourceforge.net/docs/html/]==])
whatis([==[URL: http://ftgl.sourceforge.net/docs/html/]==])

local root = "/app/software/FTGL/2.3-GCCcore-10.2.0"

conflict("FTGL")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("freetype/2.10.3-GCCcore-10.2.0") ) then
    load("freetype/2.10.3-GCCcore-10.2.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-10.2.0") ) then
    load("libGLU/9.0.1-GCCcore-10.2.0")
end

if not ( isloaded("Mesa/20.2.1-GCCcore-10.2.0") ) then
    load("Mesa/20.2.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFTGL", root)
setenv("EBVERSIONFTGL", "2.3")
setenv("EBDEVELFTGL", pathJoin(root, "logs/FTGL-2.3-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
