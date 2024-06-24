help([==[

Description
===========
libsoup is an HTTP client/server library for GNOME. It
uses GObjects and the glib main loop, to integrate well with GNOME
applications, and also has a synchronous API, for use in threaded
applications.


More information
================
 - Homepage: https://wiki.gnome.org/Projects/libsoup
]==])

whatis([==[Description: libsoup is an HTTP client/server library for GNOME. It
uses GObjects and the glib main loop, to integrate well with GNOME
applications, and also has a synchronous API, for use in threaded
applications.]==])
whatis([==[Homepage: https://wiki.gnome.org/Projects/libsoup]==])
whatis([==[URL: https://wiki.gnome.org/Projects/libsoup]==])

local root = "/app/software/LibSoup/2.72.0-GCCcore-10.2.0"

conflict("LibSoup")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

if not ( isloaded("SQLite/3.33.0-GCCcore-10.2.0") ) then
    load("SQLite/3.33.0-GCCcore-10.2.0")
end

if not ( isloaded("GLib/2.66.1-GCCcore-10.2.0") ) then
    load("GLib/2.66.1-GCCcore-10.2.0")
end

if not ( isloaded("libpsl/0.21.1-GCCcore-10.2.0") ) then
    load("libpsl/0.21.1-GCCcore-10.2.0")
end

if not ( isloaded("cURL/7.72.0-GCCcore-10.2.0") ) then
    load("cURL/7.72.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBSOUP", root)
setenv("EBVERSIONLIBSOUP", "2.72.0")
setenv("EBDEVELLIBSOUP", pathJoin(root, "logs/LibSoup-2.72.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
