help([==[

Description
===========
wxWidgets is a C++ library that lets developers create
applications for Windows, Mac OS X, Linux and other platforms with a
single code base. It has popular language bindings for Python, Perl,
Ruby and many other languages, and unlike other cross-platform toolkits,
wxWidgets gives applications a truly native look and feel because it
uses the platform's native API rather than emulating the GUI.


More information
================
 - Homepage: https://www.wxwidgets.org
]==])

whatis([==[Description: wxWidgets is a C++ library that lets developers create
applications for Windows, Mac OS X, Linux and other platforms with a
single code base. It has popular language bindings for Python, Perl,
Ruby and many other languages, and unlike other cross-platform toolkits,
wxWidgets gives applications a truly native look and feel because it
uses the platform's native API rather than emulating the GUI.]==])
whatis([==[Homepage: https://www.wxwidgets.org]==])
whatis([==[URL: https://www.wxwidgets.org]==])

local root = "/app/software/wxWidgets/3.1.4-GCC-10.2.0"

conflict("wxWidgets")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.2.0") ) then
    load("libpng/1.6.37-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("jbigkit/2.1-GCCcore-10.2.0") ) then
    load("jbigkit/2.1-GCCcore-10.2.0")
end

if not ( isloaded("LibTIFF/4.1.0-GCCcore-10.2.0") ) then
    load("LibTIFF/4.1.0-GCCcore-10.2.0")
end

if not ( isloaded("expat/2.2.9-GCCcore-10.2.0") ) then
    load("expat/2.2.9-GCCcore-10.2.0")
end

if not ( isloaded("GTK+/3.24.23-GCCcore-10.2.0") ) then
    load("GTK+/3.24.23-GCCcore-10.2.0")
end

if not ( isloaded("X11/20201008-GCCcore-10.2.0") ) then
    load("X11/20201008-GCCcore-10.2.0")
end

if not ( isloaded("Mesa/20.2.1-GCCcore-10.2.0") ) then
    load("Mesa/20.2.1-GCCcore-10.2.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-10.2.0") ) then
    load("libGLU/9.0.1-GCCcore-10.2.0")
end

if not ( isloaded("SDL2/2.0.14-GCCcore-10.2.0") ) then
    load("SDL2/2.0.14-GCCcore-10.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-10.2.0") ) then
    load("cairo/1.16.0-GCCcore-10.2.0")
end

if not ( isloaded("GST-plugins-base/1.18.4-GCC-10.2.0") ) then
    load("GST-plugins-base/1.18.4-GCC-10.2.0")
end

if not ( isloaded("GLib/2.66.1-GCCcore-10.2.0") ) then
    load("GLib/2.66.1-GCCcore-10.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTWXWIDGETS", root)
setenv("EBVERSIONWXWIDGETS", "3.1.4")
setenv("EBDEVELWXWIDGETS", pathJoin(root, "logs/wxWidgets-3.1.4-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
