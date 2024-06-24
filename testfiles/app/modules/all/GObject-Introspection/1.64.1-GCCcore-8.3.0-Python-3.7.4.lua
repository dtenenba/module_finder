help([==[

Description
===========
GObject introspection is a middleware layer between C libraries
 (using GObject) and language bindings. The C library can be scanned at
 compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.


More information
================
 - Homepage: https://wiki.gnome.org/GObjectIntrospection/
]==])

whatis([==[Description: GObject introspection is a middleware layer between C libraries
 (using GObject) and language bindings. The C library can be scanned at
 compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.]==])
whatis([==[Homepage: https://wiki.gnome.org/GObjectIntrospection/]==])
whatis([==[URL: https://wiki.gnome.org/GObjectIntrospection/]==])

local root = "/app/software/GObject-Introspection/1.64.1-GCCcore-8.3.0-Python-3.7.4"

conflict("GObject-Introspection")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("GLib/2.62.0-GCCcore-8.3.0") ) then
    load("GLib/2.62.0-GCCcore-8.3.0")
end

if not ( isloaded("libffi/3.2.1-GCCcore-8.3.0") ) then
    load("libffi/3.2.1-GCCcore-8.3.0")
end

if not ( isloaded("util-linux/2.34-GCCcore-8.3.0") ) then
    load("util-linux/2.34-GCCcore-8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGOBJECTMININTROSPECTION", root)
setenv("EBVERSIONGOBJECTMININTROSPECTION", "1.64.1")
setenv("EBDEVELGOBJECTMININTROSPECTION", pathJoin(root, "logs/GObject-Introspection-1.64.1-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
