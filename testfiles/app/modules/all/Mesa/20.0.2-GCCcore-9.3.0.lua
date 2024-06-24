help([==[

Description
===========
Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.


More information
================
 - Homepage: https://www.mesa3d.org/
]==])

whatis([==[Description: Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.]==])
whatis([==[Homepage: https://www.mesa3d.org/]==])
whatis([==[URL: https://www.mesa3d.org/]==])

local root = "/app/software/Mesa/20.0.2-GCCcore-9.3.0"

conflict("Mesa")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-9.3.0") ) then
    load("zlib/1.2.11-GCCcore-9.3.0")
end

if not ( isloaded("zstd/1.4.4-GCCcore-9.3.0") ) then
    load("zstd/1.4.4-GCCcore-9.3.0")
end

if not ( isloaded("libdrm/2.4.100-GCCcore-9.3.0") ) then
    load("libdrm/2.4.100-GCCcore-9.3.0")
end

if not ( isloaded("libglvnd/1.2.0-GCCcore-9.3.0") ) then
    load("libglvnd/1.2.0-GCCcore-9.3.0")
end

if not ( isloaded("libunwind/1.3.1-GCCcore-9.3.0") ) then
    load("libunwind/1.3.1-GCCcore-9.3.0")
end

if not ( isloaded("LLVM/9.0.1-GCCcore-9.3.0") ) then
    load("LLVM/9.0.1-GCCcore-9.3.0")
end

if not ( isloaded("X11/20200222-GCCcore-9.3.0") ) then
    load("X11/20200222-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "20.0.2")
setenv("EBDEVELMESA", pathJoin(root, "logs/Mesa-20.0.2-GCCcore-9.3.0-easybuild-devel"))

prepend_path("__EGL_VENDOR_LIBRARY_DIRS", pathJoin(root, "share/glvnd/egl_vendor.d"))
-- Built with EasyBuild version 4.2.1
