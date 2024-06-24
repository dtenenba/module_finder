help([==[

Description
===========
Network extensions for GLib


More information
================
 - Homepage: https://gitlab.gnome.org/GNOME/glib-networking
]==])

whatis([==[Description: Network extensions for GLib]==])
whatis([==[Homepage: https://gitlab.gnome.org/GNOME/glib-networking]==])
whatis([==[URL: https://gitlab.gnome.org/GNOME/glib-networking]==])

local root = "/app/software/glib-networking/2.72.1-GCCcore-11.2.0"

conflict("glib-networking")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("GnuTLS/3.7.3-GCCcore-11.2.0") ) then
    load("GnuTLS/3.7.3-GCCcore-11.2.0")
end

if not ( isloaded("libidn2/2.3.2-GCCcore-11.2.0") ) then
    load("libidn2/2.3.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGLIBMINNETWORKING", root)
setenv("EBVERSIONGLIBMINNETWORKING", "2.72.1")
setenv("EBDEVELGLIBMINNETWORKING", pathJoin(root, "logs/glib-networking-2.72.1-GCCcore-11.2.0-easybuild-devel"))

prepend_path("GIO_EXTRA_MODULES", pathJoin(root, "lib/gio/modules"))
-- Built with EasyBuild version 4.6.0
