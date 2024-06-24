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

local root = "/app/software/FTGL/2.1.3-rc5-GCCcore-8.3.0"

conflict("FTGL")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("freetype/2.10.1-GCCcore-8.3.0") ) then
    load("freetype/2.10.1-GCCcore-8.3.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-8.3.0") ) then
    load("libGLU/9.0.1-GCCcore-8.3.0")
end

if not ( isloaded("Mesa/19.2.1-GCCcore-8.3.0") ) then
    load("Mesa/19.2.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFTGL", root)
setenv("EBVERSIONFTGL", "2.1.3-rc5")
setenv("EBDEVELFTGL", pathJoin(root, "logs/FTGL-2.1.3-rc5-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
