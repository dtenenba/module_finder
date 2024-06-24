help([==[

Description
===========
PyOpenGL is the most common cross platform Python binding to OpenGL and related APIs.


More information
================
 - Homepage: http://pyopengl.sourceforge.net
]==])

whatis([==[Description: PyOpenGL is the most common cross platform Python binding to OpenGL and related APIs.]==])
whatis([==[Homepage: http://pyopengl.sourceforge.net]==])
whatis([==[URL: http://pyopengl.sourceforge.net]==])

local root = "/app/software/PyOpenGL/3.1.5-GCCcore-8.3.0"

conflict("PyOpenGL")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("Mesa/19.2.1-GCCcore-8.3.0") ) then
    load("Mesa/19.2.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYOPENGL", root)
setenv("EBVERSIONPYOPENGL", "3.1.5")
setenv("EBDEVELPYOPENGL", pathJoin(root, "logs/PyOpenGL-3.1.5-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.4
