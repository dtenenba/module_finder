help([==[

Description
===========
Wraps the wxWidgets C++ toolkit and provides access to the user interface portions of the wxWidgets 
API, enabling Python applications to have a native GUI on Windows, Macs or Unix systems, with a native look and feel 
and requiring very little (if any) platform specific code.


More information
================
 - Homepage: https://www.wxpython.org/


Included extensions
===================
attrdict-2.0.1, wxPython-4.2.0
]==])

whatis([==[Description: Wraps the wxWidgets C++ toolkit and provides access to the user interface portions of the wxWidgets 
API, enabling Python applications to have a native GUI on Windows, Macs or Unix systems, with a native look and feel 
and requiring very little (if any) platform specific code.]==])
whatis([==[Homepage: https://www.wxpython.org/]==])
whatis([==[URL: https://www.wxpython.org/]==])
whatis([==[Extensions: attrdict-2.0.1, wxPython-4.2.0]==])

local root = "/app/software/wxPython/4.2.0-foss-2021b"

conflict("wxPython")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("Pillow/8.3.2-GCCcore-11.2.0") ) then
    load("Pillow/8.3.2-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.2.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.2.0")
end

if not ( isloaded("expat/2.4.1-GCCcore-11.2.0") ) then
    load("expat/2.4.1-GCCcore-11.2.0")
end

if not ( isloaded("GTK3/3.24.31-GCCcore-11.2.0") ) then
    load("GTK3/3.24.31-GCCcore-11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("GConf/3.2.6-GCCcore-11.2.0") ) then
    load("GConf/3.2.6-GCCcore-11.2.0")
end

if not ( isloaded("GST-plugins-base/1.18.5-GCC-11.2.0") ) then
    load("GST-plugins-base/1.18.5-GCC-11.2.0")
end

if not ( isloaded("pkg-config/0.29.2-GCCcore-11.2.0") ) then
    load("pkg-config/0.29.2-GCCcore-11.2.0")
end

if not ( isloaded("Mesa/21.1.7-GCCcore-11.2.0") ) then
    load("Mesa/21.1.7-GCCcore-11.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-11.2.0") ) then
    load("libGLU/9.0.2-GCCcore-11.2.0")
end

if not ( isloaded("LibSoup/3.0.7-GCC-11.2.0") ) then
    load("LibSoup/3.0.7-GCC-11.2.0")
end

if not ( isloaded("WebKitGTK+/2.37.1-GCC-11.2.0") ) then
    load("WebKitGTK+/2.37.1-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWXPYTHON", root)
setenv("EBVERSIONWXPYTHON", "4.2.0")
setenv("EBDEVELWXPYTHON", pathJoin(root, "logs/wxPython-4.2.0-foss-2021b-easybuild-devel"))

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.9/site-packages/wx"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTWXPYTHON", "attrdict-2.0.1,wxPython-4.2.0")
