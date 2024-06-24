help([==[

Description
===========
Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB


More information
================
 - Homepage: https://cairographics.org
]==])

whatis([==[Description: Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB]==])
whatis([==[Homepage: https://cairographics.org]==])
whatis([==[URL: https://cairographics.org]==])

local root = "/app/software/cairo/1.18.0-GCCcore-13.2.0"

conflict("cairo")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-13.2.0") ) then
    load("bzip2/1.0.8-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("libpng/1.6.40-GCCcore-13.2.0") ) then
    load("libpng/1.6.40-GCCcore-13.2.0")
end

if not ( isloaded("freetype/2.13.2-GCCcore-13.2.0") ) then
    load("freetype/2.13.2-GCCcore-13.2.0")
end

if not ( isloaded("pixman/0.42.2-GCCcore-13.2.0") ) then
    load("pixman/0.42.2-GCCcore-13.2.0")
end

if not ( isloaded("expat/2.5.0-GCCcore-13.2.0") ) then
    load("expat/2.5.0-GCCcore-13.2.0")
end

if not ( isloaded("GLib/2.78.1-GCCcore-13.2.0") ) then
    load("GLib/2.78.1-GCCcore-13.2.0")
end

if not ( isloaded("X11/20231019-GCCcore-13.2.0") ) then
    load("X11/20231019-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTCAIRO", root)
setenv("EBVERSIONCAIRO", "1.18.0")
setenv("EBDEVELCAIRO", pathJoin(root, "logs/cairo-1.18.0-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
