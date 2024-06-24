help([==[

Description
===========
D-Bus is a message bus system, a simple way for applications to talk to one another.


More information
================
 - Homepage: https://dbus.freedesktop.org/doc/dbus-glib
]==])

whatis([==[Description: D-Bus is a message bus system, a simple way for applications to talk to one another.]==])
whatis([==[Homepage: https://dbus.freedesktop.org/doc/dbus-glib]==])
whatis([==[URL: https://dbus.freedesktop.org/doc/dbus-glib]==])

local root = "/app/software/dbus-glib/0.110-GCCcore-10.2.0"

conflict("dbus-glib")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("GLib/2.66.1-GCCcore-10.2.0") ) then
    load("GLib/2.66.1-GCCcore-10.2.0")
end

if not ( isloaded("DBus/1.13.18-GCCcore-10.2.0") ) then
    load("DBus/1.13.18-GCCcore-10.2.0")
end

if not ( isloaded("expat/2.2.9-GCCcore-10.2.0") ) then
    load("expat/2.2.9-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTDBUSMINGLIB", root)
setenv("EBVERSIONDBUSMINGLIB", "0.110")
setenv("EBDEVELDBUSMINGLIB", pathJoin(root, "logs/dbus-glib-0.110-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
