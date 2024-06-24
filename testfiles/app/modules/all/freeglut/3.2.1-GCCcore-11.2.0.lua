help([==[

Description
===========
freeglut is a completely OpenSourced alternative to the OpenGL Utility Toolkit (GLUT) library.


More information
================
 - Homepage: http://freeglut.sourceforge.net/
]==])

whatis([==[Description: freeglut is a completely OpenSourced alternative to the OpenGL Utility Toolkit (GLUT) library.]==])
whatis([==[Homepage: http://freeglut.sourceforge.net/]==])
whatis([==[URL: http://freeglut.sourceforge.net/]==])

local root = "/app/software/freeglut/3.2.1-GCCcore-11.2.0"

conflict("freeglut")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

if not ( isloaded("Mesa/21.1.7-GCCcore-11.2.0") ) then
    load("Mesa/21.1.7-GCCcore-11.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-11.2.0") ) then
    load("libGLU/9.0.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFREEGLUT", root)
setenv("EBVERSIONFREEGLUT", "3.2.1")
setenv("EBDEVELFREEGLUT", pathJoin(root, "logs/freeglut-3.2.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
