help([==[

Description
===========
GTK+ is the primary library used to construct user interfaces in GNOME. It
 provides all the user interface controls, or widgets, used in a common
 graphical application. Its object-oriented API allows you to construct
 user interfaces without dealing with the low-level details of drawing and
 device interaction.


More information
================
 - Homepage: https://developer.gnome.org/gtk3/stable/
]==])

whatis([==[Description: GTK+ is the primary library used to construct user interfaces in GNOME. It
 provides all the user interface controls, or widgets, used in a common
 graphical application. Its object-oriented API allows you to construct
 user interfaces without dealing with the low-level details of drawing and
 device interaction.
]==])
whatis([==[Homepage: https://developer.gnome.org/gtk3/stable/]==])
whatis([==[URL: https://developer.gnome.org/gtk3/stable/]==])

local root = "/app/software/GTK3/3.24.31-GCCcore-11.2.0"

conflict("GTK3")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("ATK/2.36.0-GCCcore-11.2.0") ) then
    load("ATK/2.36.0-GCCcore-11.2.0")
end

if not ( isloaded("at-spi2-atk/2.38.0-GCCcore-11.2.0") ) then
    load("at-spi2-atk/2.38.0-GCCcore-11.2.0")
end

if not ( isloaded("Gdk-Pixbuf/2.42.6-GCCcore-11.2.0") ) then
    load("Gdk-Pixbuf/2.42.6-GCCcore-11.2.0")
end

if not ( isloaded("Pango/1.48.8-GCCcore-11.2.0") ) then
    load("Pango/1.48.8-GCCcore-11.2.0")
end

if not ( isloaded("libepoxy/1.5.8-GCCcore-11.2.0") ) then
    load("libepoxy/1.5.8-GCCcore-11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

if not ( isloaded("FriBidi/1.0.10-GCCcore-11.2.0") ) then
    load("FriBidi/1.0.10-GCCcore-11.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGTK3", root)
setenv("EBVERSIONGTK3", "3.24.31")
setenv("EBDEVELGTK3", pathJoin(root, "logs/GTK3-3.24.31-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
