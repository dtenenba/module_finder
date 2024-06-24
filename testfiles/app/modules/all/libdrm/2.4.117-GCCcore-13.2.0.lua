help([==[

Description
===========
Direct Rendering Manager runtime library.


More information
================
 - Homepage: https://dri.freedesktop.org
]==])

whatis([==[Description: Direct Rendering Manager runtime library.]==])
whatis([==[Homepage: https://dri.freedesktop.org]==])
whatis([==[URL: https://dri.freedesktop.org]==])

local root = "/app/software/libdrm/2.4.117-GCCcore-13.2.0"

conflict("libdrm")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("X11/20231019-GCCcore-13.2.0") ) then
    load("X11/20231019-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBDRM", root)
setenv("EBVERSIONLIBDRM", "2.4.117")
setenv("EBDEVELLIBDRM", pathJoin(root, "logs/libdrm-2.4.117-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
