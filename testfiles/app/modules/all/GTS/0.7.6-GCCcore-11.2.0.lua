help([==[

Description
===========
GTS stands for the GNU Triangulated Surface Library.
It is an Open Source Free Software Library intended to provide a set of useful
functions to deal with 3D surfaces meshed with interconnected triangles.


More information
================
 - Homepage: http://gts.sourceforge.net/
]==])

whatis([==[Description: GTS stands for the GNU Triangulated Surface Library.
It is an Open Source Free Software Library intended to provide a set of useful
functions to deal with 3D surfaces meshed with interconnected triangles.]==])
whatis([==[Homepage: http://gts.sourceforge.net/]==])
whatis([==[URL: http://gts.sourceforge.net/]==])

local root = "/app/software/GTS/0.7.6-GCCcore-11.2.0"

conflict("GTS")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGTS", root)
setenv("EBVERSIONGTS", "0.7.6")
setenv("EBDEVELGTS", pathJoin(root, "logs/GTS-0.7.6-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
