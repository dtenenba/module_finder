help([==[

Description
===========
The GTK+ 2 package contains libraries used for creating graphical user interfaces for applications.


More information
================
 - Homepage: https://www.gtk.org
]==])

whatis([==[Description: 
 The GTK+ 2 package contains libraries used for creating graphical user interfaces for applications.
]==])
whatis([==[Homepage: https://www.gtk.org]==])
whatis([==[URL: https://www.gtk.org]==])

local root = "/app/software/GTK2/2.24.33-GCCcore-11.3.0"

conflict("GTK2")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("ATK/2.38.0-GCCcore-11.3.0") ) then
    load("ATK/2.38.0-GCCcore-11.3.0")
end

if not ( isloaded("Gdk-Pixbuf/2.42.8-GCCcore-11.3.0") ) then
    load("Gdk-Pixbuf/2.42.8-GCCcore-11.3.0")
end

if not ( isloaded("Pango/1.50.7-GCCcore-11.3.0") ) then
    load("Pango/1.50.7-GCCcore-11.3.0")
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
setenv("EBROOTGTK2", root)
setenv("EBVERSIONGTK2", "2.24.33")
setenv("EBDEVELGTK2", pathJoin(root, "logs/GTK2-2.24.33-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
