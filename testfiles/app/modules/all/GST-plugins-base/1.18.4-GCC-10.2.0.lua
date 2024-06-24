help([==[

Description
===========
GStreamer is a library for constructing graphs of media-handling
 components. The applications it supports range from simple
 Ogg/Vorbis playback, audio/video streaming to complex audio
 (mixing) and video (non-linear editing) processing.


More information
================
 - Homepage: https://gstreamer.freedesktop.org/
]==])

whatis([==[Description: GStreamer is a library for constructing graphs of media-handling
 components. The applications it supports range from simple
 Ogg/Vorbis playback, audio/video streaming to complex audio
 (mixing) and video (non-linear editing) processing.]==])
whatis([==[Homepage: https://gstreamer.freedesktop.org/]==])
whatis([==[URL: https://gstreamer.freedesktop.org/]==])

local root = "/app/software/GST-plugins-base/1.18.4-GCC-10.2.0"

conflict("GST-plugins-base")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("GLib/2.66.1-GCCcore-10.2.0") ) then
    load("GLib/2.66.1-GCCcore-10.2.0")
end

if not ( isloaded("GTK+/3.24.23-GCCcore-10.2.0") ) then
    load("GTK+/3.24.23-GCCcore-10.2.0")
end

if not ( isloaded("GStreamer/1.18.4-GCC-10.2.0") ) then
    load("GStreamer/1.18.4-GCC-10.2.0")
end

if not ( isloaded("Gdk-Pixbuf/2.40.0-GCCcore-10.2.0") ) then
    load("Gdk-Pixbuf/2.40.0-GCCcore-10.2.0")
end

if not ( isloaded("X11/20201008-GCCcore-10.2.0") ) then
    load("X11/20201008-GCCcore-10.2.0")
end

if not ( isloaded("Mesa/20.2.1-GCCcore-10.2.0") ) then
    load("Mesa/20.2.1-GCCcore-10.2.0")
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
setenv("EBROOTGSTMINPLUGINSMINBASE", root)
setenv("EBVERSIONGSTMINPLUGINSMINBASE", "1.18.4")
setenv("EBDEVELGSTMINPLUGINSMINBASE", pathJoin(root, "logs/GST-plugins-base-1.18.4-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
