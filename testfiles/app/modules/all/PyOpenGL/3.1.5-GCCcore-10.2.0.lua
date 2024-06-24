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

local root = "/app/software/PyOpenGL/3.1.5-GCCcore-10.2.0"

conflict("PyOpenGL")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Mesa/20.2.1-GCCcore-10.2.0") ) then
    load("Mesa/20.2.1-GCCcore-10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYOPENGL", root)
setenv("EBVERSIONPYOPENGL", "3.1.5")
setenv("EBDEVELPYOPENGL", pathJoin(root, "logs/PyOpenGL-3.1.5-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
