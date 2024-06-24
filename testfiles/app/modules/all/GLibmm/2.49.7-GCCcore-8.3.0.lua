help([==[

Description
===========
C++ bindings for Glib


More information
================
 - Homepage: https://www.gtk.org/
]==])

whatis([==[Description: C++ bindings for Glib]==])
whatis([==[Homepage: https://www.gtk.org/]==])
whatis([==[URL: https://www.gtk.org/]==])

local root = "/app/software/GLibmm/2.49.7-GCCcore-8.3.0"

conflict("GLibmm")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("GLib/2.62.0-GCCcore-8.3.0") ) then
    load("GLib/2.62.0-GCCcore-8.3.0")
end

if not ( isloaded("libsigc++/2.10.2-GCCcore-8.3.0") ) then
    load("libsigc++/2.10.2-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGLIBMM", root)
setenv("EBVERSIONGLIBMM", "2.49.7")
setenv("EBDEVELGLIBMM", pathJoin(root, "logs/GLibmm-2.49.7-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
