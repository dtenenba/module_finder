help([==[

Description
===========
GLib is one of the base libraries of the GTK+ project


More information
================
 - Homepage: https://www.gtk.org/
]==])

whatis([==[Description: GLib is one of the base libraries of the GTK+ project]==])
whatis([==[Homepage: https://www.gtk.org/]==])
whatis([==[URL: https://www.gtk.org/]==])

local root = "/app/software/GLib/2.77.1-GCCcore-12.3.0"

conflict("GLib")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("libffi/3.4.4-GCCcore-12.3.0") ) then
    load("libffi/3.4.4-GCCcore-12.3.0")
end

if not ( isloaded("gettext/0.21.1-GCCcore-12.3.0") ) then
    load("gettext/0.21.1-GCCcore-12.3.0")
end

if not ( isloaded("libxml2/2.11.4-GCCcore-12.3.0") ) then
    load("libxml2/2.11.4-GCCcore-12.3.0")
end

if not ( isloaded("PCRE2/10.42-GCCcore-12.3.0") ) then
    load("PCRE2/10.42-GCCcore-12.3.0")
end

if not ( isloaded("util-linux/2.39-GCCcore-12.3.0") ) then
    load("util-linux/2.39-GCCcore-12.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGLIB", root)
setenv("EBVERSIONGLIB", "2.77.1")
setenv("EBDEVELGLIB", pathJoin(root, "logs/GLib-2.77.1-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
