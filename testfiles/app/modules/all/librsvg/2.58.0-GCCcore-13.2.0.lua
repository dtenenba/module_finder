help([==[

Description
===========
Librsvg is a library to render SVG files using cairo.


More information
================
 - Homepage: https://wiki.gnome.org/Projects/LibRsvg
]==])

whatis([==[Description: Librsvg is a library to render SVG files using cairo.]==])
whatis([==[Homepage: https://wiki.gnome.org/Projects/LibRsvg]==])
whatis([==[URL: https://wiki.gnome.org/Projects/LibRsvg]==])

local root = "/app/software/librsvg/2.58.0-GCCcore-13.2.0"

conflict("librsvg")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("cairo/1.18.0-GCCcore-13.2.0") ) then
    load("cairo/1.18.0-GCCcore-13.2.0")
end

if not ( isloaded("freetype/2.13.2-GCCcore-13.2.0") ) then
    load("freetype/2.13.2-GCCcore-13.2.0")
end

if not ( isloaded("Gdk-Pixbuf/2.42.10-GCCcore-13.2.0") ) then
    load("Gdk-Pixbuf/2.42.10-GCCcore-13.2.0")
end

if not ( isloaded("HarfBuzz/8.2.2-GCCcore-13.2.0") ) then
    load("HarfBuzz/8.2.2-GCCcore-13.2.0")
end

if not ( isloaded("Pango/1.51.0-GCCcore-13.2.0") ) then
    load("Pango/1.51.0-GCCcore-13.2.0")
end

if not ( isloaded("GObject-Introspection/1.78.1-GCCcore-13.2.0") ) then
    load("GObject-Introspection/1.78.1-GCCcore-13.2.0")
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
setenv("EBVERSIONLIBRSVG", "2.58.0")
setenv("EBDEVELLIBRSVG", pathJoin(root, "logs/librsvg-2.58.0-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
