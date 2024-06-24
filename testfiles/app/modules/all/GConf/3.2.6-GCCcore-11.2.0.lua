help([==[

Description
===========
GConf is a system for storing application preferences.
 It is intended for user preferences; not configuration
 of something like Apache, or arbitrary data storage.


More information
================
 - Homepage: https://gitlab.gnome.org/iainl/gconf
]==])

whatis([==[Description: GConf is a system for storing application preferences.
 It is intended for user preferences; not configuration
 of something like Apache, or arbitrary data storage.]==])
whatis([==[Homepage: https://gitlab.gnome.org/iainl/gconf]==])
whatis([==[URL: https://gitlab.gnome.org/iainl/gconf]==])

local root = "/app/software/GConf/3.2.6-GCCcore-11.2.0"

conflict("GConf")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("dbus-glib/0.112-GCCcore-11.2.0") ) then
    load("dbus-glib/0.112-GCCcore-11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

if not ( isloaded("GTK3/3.24.31-GCCcore-11.2.0") ) then
    load("GTK3/3.24.31-GCCcore-11.2.0")
end

if not ( isloaded("intltool/0.51.0-GCCcore-11.2.0") ) then
    load("intltool/0.51.0-GCCcore-11.2.0")
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
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGCONF", root)
setenv("EBVERSIONGCONF", "3.2.6")
setenv("EBDEVELGCONF", pathJoin(root, "logs/GConf-3.2.6-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
