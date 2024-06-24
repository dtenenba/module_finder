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

local root = "/app/software/LibSoup/3.0.7-GCC-11.2.0"

conflict("LibSoup")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

if not ( isloaded("SQLite/3.36-GCCcore-11.2.0") ) then
    load("SQLite/3.36-GCCcore-11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("libpsl/0.21.1-GCCcore-11.2.0") ) then
    load("libpsl/0.21.1-GCCcore-11.2.0")
end

if not ( isloaded("cURL/7.78.0-GCCcore-11.2.0") ) then
    load("cURL/7.78.0-GCCcore-11.2.0")
end

if not ( isloaded("GnuTLS/3.7.3-GCCcore-11.2.0") ) then
    load("GnuTLS/3.7.3-GCCcore-11.2.0")
end

if not ( isloaded("nghttp2/1.48.0-GCC-11.2.0") ) then
    load("nghttp2/1.48.0-GCC-11.2.0")
end

if not ( isloaded("glib-networking/2.72.1-GCCcore-11.2.0") ) then
    load("glib-networking/2.72.1-GCCcore-11.2.0")
end

if not ( isloaded("Brotli/1.0.9-GCCcore-11.2.0") ) then
    load("Brotli/1.0.9-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBSOUP", root)
setenv("EBVERSIONLIBSOUP", "3.0.7")
setenv("EBDEVELLIBSOUP", pathJoin(root, "logs/LibSoup-3.0.7-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
