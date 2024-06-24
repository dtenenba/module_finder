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

local root = "/app/software/librsvg/2.49.1-foss-2019b"

conflict("librsvg")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Gdk-Pixbuf/2.38.2-GCCcore-8.3.0") ) then
    load("Gdk-Pixbuf/2.38.2-GCCcore-8.3.0")
end

if not ( isloaded("libcroco/0.6.13-GCCcore-8.3.0") ) then
    load("libcroco/0.6.13-GCCcore-8.3.0")
end

if not ( isloaded("Pango/1.44.7-GCCcore-8.3.0") ) then
    load("Pango/1.44.7-GCCcore-8.3.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-8.3.0") ) then
    load("cairo/1.16.0-GCCcore-8.3.0")
end

if not ( isloaded("Rust/1.42.0-GCCcore-8.3.0") ) then
    load("Rust/1.42.0-GCCcore-8.3.0")
end

if not ( isloaded("GObject-Introspection/1.64.1-GCCcore-8.3.0-Python-3.7.4") ) then
    load("GObject-Introspection/1.64.1-GCCcore-8.3.0-Python-3.7.4")
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
setenv("EBVERSIONLIBRSVG", "2.49.1")
setenv("EBDEVELLIBRSVG", pathJoin(root, "logs/librsvg-2.49.1-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
