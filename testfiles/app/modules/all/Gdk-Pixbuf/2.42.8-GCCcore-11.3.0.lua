help([==[

Description
===========
The Gdk Pixbuf is a toolkit for image loading and pixel buffer manipulation.
 It is used by GTK+ 2 and GTK+ 3 to load and manipulate images. In the past it
 was distributed as part of GTK+ 2 but it was split off into a separate package
 in preparation for the change to GTK+ 3.


More information
================
 - Homepage: https://docs.gtk.org/gdk-pixbuf/
]==])

whatis([==[Description: 
 The Gdk Pixbuf is a toolkit for image loading and pixel buffer manipulation.
 It is used by GTK+ 2 and GTK+ 3 to load and manipulate images. In the past it
 was distributed as part of GTK+ 2 but it was split off into a separate package
 in preparation for the change to GTK+ 3.
]==])
whatis([==[Homepage: https://docs.gtk.org/gdk-pixbuf/]==])
whatis([==[URL: https://docs.gtk.org/gdk-pixbuf/]==])

local root = "/app/software/Gdk-Pixbuf/2.42.8-GCCcore-11.3.0"

conflict("Gdk-Pixbuf")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("GLib/2.72.1-GCCcore-11.3.0") ) then
    load("GLib/2.72.1-GCCcore-11.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.3-GCCcore-11.3.0") ) then
    load("libjpeg-turbo/2.1.3-GCCcore-11.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.3.0") ) then
    load("libpng/1.6.37-GCCcore-11.3.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.3.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.3.0")
end

if not ( isloaded("X11/20220504-GCCcore-11.3.0") ) then
    load("X11/20220504-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDKMINPIXBUF", root)
setenv("EBVERSIONGDKMINPIXBUF", "2.42.8")
setenv("EBDEVELGDKMINPIXBUF", pathJoin(root, "logs/Gdk-Pixbuf-2.42.8-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
