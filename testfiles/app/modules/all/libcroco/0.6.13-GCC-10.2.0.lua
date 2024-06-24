help([==[

Description
===========
Libcroco is a standalone css2 parsing and manipulation library.


More information
================
 - Homepage: https://gitlab.gnome.org/Archive/libcroco
]==])

whatis([==[Description: Libcroco is a standalone css2 parsing and manipulation library.]==])
whatis([==[Homepage: https://gitlab.gnome.org/Archive/libcroco]==])
whatis([==[URL: https://gitlab.gnome.org/Archive/libcroco]==])

local root = "/app/software/libcroco/0.6.13-GCC-10.2.0"

conflict("libcroco")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

if not ( isloaded("GLib/2.66.1-GCCcore-10.2.0") ) then
    load("GLib/2.66.1-GCCcore-10.2.0")
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
setenv("EBDEVELLIBCROCO", pathJoin(root, "logs/libcroco-0.6.13-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
