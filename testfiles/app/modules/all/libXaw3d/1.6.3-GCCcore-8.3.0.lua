help([==[

Description
===========
X11 client-side library


More information
================
 - Homepage: http://www.freedesktop.org/wiki/Software/xlibs
]==])

whatis([==[Description: X11 client-side library]==])
whatis([==[Homepage: http://www.freedesktop.org/wiki/Software/xlibs]==])
whatis([==[URL: http://www.freedesktop.org/wiki/Software/xlibs]==])

local root = "/app/software/libXaw3d/1.6.3-GCCcore-8.3.0"

conflict("libXaw3d")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBXAW3D", root)
setenv("EBVERSIONLIBXAW3D", "1.6.3")
setenv("EBDEVELLIBXAW3D", pathJoin(root, "logs/libXaw3d-1.6.3-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
