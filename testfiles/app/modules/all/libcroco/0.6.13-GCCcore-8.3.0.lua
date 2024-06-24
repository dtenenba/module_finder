help([==[

Description
===========
Libcroco is a standalone css2 parsing and manipulation library.


More information
================
 - Homepage: https://github.com/GNOME/libcroco
]==])

whatis([==[Description: Libcroco is a standalone css2 parsing and manipulation library.]==])
whatis([==[Homepage: https://github.com/GNOME/libcroco]==])
whatis([==[URL: https://github.com/GNOME/libcroco]==])

local root = "/app/software/libcroco/0.6.13-GCCcore-8.3.0"

conflict("libcroco")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

if not ( isloaded("GLib/2.62.0-GCCcore-8.3.0") ) then
    load("GLib/2.62.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBCROCO", root)
setenv("EBVERSIONLIBCROCO", "0.6.13")
setenv("EBDEVELLIBCROCO", pathJoin(root, "logs/libcroco-0.6.13-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
