help([==[

Description
===========
The GTK+ 2 package contains libraries used for creating graphical user interfaces for applications.


More information
================
 - Homepage: https://developer.gnome.org/gtk+/stable/
]==])

whatis([==[Description: 
 The GTK+ 2 package contains libraries used for creating graphical user interfaces for applications.
]==])
whatis([==[Homepage: https://developer.gnome.org/gtk+/stable/]==])
whatis([==[URL: https://developer.gnome.org/gtk+/stable/]==])

local root = "/app/software/GTK+/2.24.32-foss-2019b"

conflict("GTK+")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("ATK/2.34.1-GCCcore-8.3.0") ) then
    load("ATK/2.34.1-GCCcore-8.3.0")
end

if not ( isloaded("Gdk-Pixbuf/2.38.2-GCCcore-8.3.0") ) then
    load("Gdk-Pixbuf/2.38.2-GCCcore-8.3.0")
end

if not ( isloaded("Pango/1.44.7-GCCcore-8.3.0") ) then
    load("Pango/1.44.7-GCCcore-8.3.0")
end

if not ( isloaded("FriBidi/1.0.5-GCCcore-8.3.0") ) then
    load("FriBidi/1.0.5-GCCcore-8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGTKPLUS", root)
setenv("EBVERSIONGTKPLUS", "2.24.32")
setenv("EBDEVELGTKPLUS", pathJoin(root, "logs/GTK+-2.24.32-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
