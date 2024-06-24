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

local root = "/app/software/wxWidgets/3.2.2.1-GCCcore-12.2.0"

conflict("wxWidgets")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("libpng/1.6.38-GCCcore-12.2.0") ) then
    load("libpng/1.6.38-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("libjpeg-turbo/2.1.4-GCCcore-12.2.0") ) then
    load("libjpeg-turbo/2.1.4-GCCcore-12.2.0")
end

if not ( isloaded("XZ/5.2.7-GCCcore-12.2.0") ) then
    load("XZ/5.2.7-GCCcore-12.2.0")
end

if not ( isloaded("jbigkit/2.1-GCCcore-12.2.0") ) then
    load("jbigkit/2.1-GCCcore-12.2.0")
end

if not ( isloaded("LibTIFF/4.4.0-GCCcore-12.2.0") ) then
    load("LibTIFF/4.4.0-GCCcore-12.2.0")
end

if not ( isloaded("expat/2.4.9-GCCcore-12.2.0") ) then
    load("expat/2.4.9-GCCcore-12.2.0")
end

if not ( isloaded("GTK3/3.24.35-GCCcore-12.2.0") ) then
    load("GTK3/3.24.35-GCCcore-12.2.0")
end

if not ( isloaded("X11/20221110-GCCcore-12.2.0") ) then
    load("X11/20221110-GCCcore-12.2.0")
end

if not ( isloaded("Mesa/22.2.4-GCCcore-12.2.0") ) then
    load("Mesa/22.2.4-GCCcore-12.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-12.2.0") ) then
    load("libGLU/9.0.2-GCCcore-12.2.0")
end

if not ( isloaded("SDL2/2.26.3-GCCcore-12.2.0") ) then
    load("SDL2/2.26.3-GCCcore-12.2.0")
end

if not ( isloaded("cairo/1.17.4-GCCcore-12.2.0") ) then
    load("cairo/1.17.4-GCCcore-12.2.0")
end

if not ( isloaded("GST-plugins-base/1.22.1-GCCcore-12.2.0") ) then
    load("GST-plugins-base/1.22.1-GCCcore-12.2.0")
end

if not ( isloaded("GLib/2.75.0-GCCcore-12.2.0") ) then
    load("GLib/2.75.0-GCCcore-12.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTWXWIDGETS", root)
setenv("EBVERSIONWXWIDGETS", "3.2.2.1")
setenv("EBDEVELWXWIDGETS", pathJoin(root, "logs/wxWidgets-3.2.2.1-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
