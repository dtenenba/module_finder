help([==[

Description
===========
libglvnd is a vendor-neutral dispatch layer for arbitrating OpenGL API calls between multiple vendors.


More information
================
 - Homepage: https://gitlab.freedesktop.org/glvnd/libglvnd
]==])

whatis([==[Description: libglvnd is a vendor-neutral dispatch layer for arbitrating OpenGL API calls between multiple vendors.]==])
whatis([==[Homepage: https://gitlab.freedesktop.org/glvnd/libglvnd]==])
whatis([==[URL: https://gitlab.freedesktop.org/glvnd/libglvnd]==])

local root = "/app/software/libglvnd/1.3.3-GCCcore-11.2.0"

conflict("libglvnd")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLVND", root)
setenv("EBVERSIONLIBGLVND", "1.3.3")
setenv("EBDEVELLIBGLVND", pathJoin(root, "logs/libglvnd-1.3.3-GCCcore-11.2.0-easybuild-devel"))

prepend_path("__EGL_VENDOR_LIBRARY_DIRS", "/etc/glvnd/egl_vendor.d:/usr/share/glvnd/egl_vendor.d")
-- Built with EasyBuild version 4.5.3
