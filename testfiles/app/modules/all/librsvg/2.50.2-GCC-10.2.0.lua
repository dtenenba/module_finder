help([==[

Description
===========
librsvg is a library to render SVG files using cairo.


More information
================
 - Homepage: https://wiki.gnome.org/action/show/Projects/LibRsvg
]==])

whatis([==[Description: librsvg is a library to render SVG files using cairo.]==])
whatis([==[Homepage: https://wiki.gnome.org/action/show/Projects/LibRsvg]==])
whatis([==[URL: https://wiki.gnome.org/action/show/Projects/LibRsvg]==])

local root = "/app/software/librsvg/2.50.2-GCC-10.2.0"

conflict("librsvg")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Gdk-Pixbuf/2.40.0-GCCcore-10.2.0") ) then
    load("Gdk-Pixbuf/2.40.0-GCCcore-10.2.0")
end

if not ( isloaded("libcroco/0.6.13-GCC-10.2.0") ) then
    load("libcroco/0.6.13-GCC-10.2.0")
end

if not ( isloaded("Pango/1.47.0-GCCcore-10.2.0") ) then
    load("Pango/1.47.0-GCCcore-10.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-10.2.0") ) then
    load("cairo/1.16.0-GCCcore-10.2.0")
end

if not ( isloaded("Rust/1.49.0-GCCcore-10.2.0") ) then
    load("Rust/1.49.0-GCCcore-10.2.0")
end

if not ( isloaded("GObject-Introspection/1.66.1-GCCcore-10.2.0") ) then
    load("GObject-Introspection/1.66.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBRSVG", root)
setenv("EBVERSIONLIBRSVG", "2.50.2")
setenv("EBDEVELLIBRSVG", pathJoin(root, "logs/librsvg-2.50.2-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
