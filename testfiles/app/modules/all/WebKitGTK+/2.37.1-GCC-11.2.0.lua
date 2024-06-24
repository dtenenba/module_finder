help([==[

Description
===========
WebKitGTK+ is a full-featured port of the WebKit
rendering engine, suitable for projects requiring any kind of web
integration, from hybrid HTML/CSS applications to full-fledged web
browsers. It offers WebKit's full functionality and is useful in a wide
range of systems from desktop computers to embedded systems like phones,
tablets, and televisions.


More information
================
 - Homepage: https://webkitgtk.org/
]==])

whatis([==[Description: WebKitGTK+ is a full-featured port of the WebKit
rendering engine, suitable for projects requiring any kind of web
integration, from hybrid HTML/CSS applications to full-fledged web
browsers. It offers WebKit's full functionality and is useful in a wide
range of systems from desktop computers to embedded systems like phones,
tablets, and televisions.]==])
whatis([==[Homepage: https://webkitgtk.org/]==])
whatis([==[URL: https://webkitgtk.org/]==])

local root = "/app/software/WebKitGTK+/2.37.1-GCC-11.2.0"

conflict("WebKitGTK+")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("gperf/3.1-GCCcore-11.2.0") ) then
    load("gperf/3.1-GCCcore-11.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-11.2.0") ) then
    load("cairo/1.16.0-GCCcore-11.2.0")
end

if not ( isloaded("GTK3/3.24.31-GCCcore-11.2.0") ) then
    load("GTK3/3.24.31-GCCcore-11.2.0")
end

if not ( isloaded("LibSoup/3.0.7-GCC-11.2.0") ) then
    load("LibSoup/3.0.7-GCC-11.2.0")
end

if not ( isloaded("ATK/2.36.0-GCCcore-11.2.0") ) then
    load("ATK/2.36.0-GCCcore-11.2.0")
end

if not ( isloaded("libgcrypt/1.9.3-GCCcore-11.2.0") ) then
    load("libgcrypt/1.9.3-GCCcore-11.2.0")
end

if not ( isloaded("libwebp/1.2.0-GCCcore-11.2.0") ) then
    load("libwebp/1.2.0-GCCcore-11.2.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-11.2.0") ) then
    load("libxslt/1.1.34-GCCcore-11.2.0")
end

if not ( isloaded("libtasn1/4.18.0-GCCcore-11.2.0") ) then
    load("libtasn1/4.18.0-GCCcore-11.2.0")
end

if not ( isloaded("GStreamer/1.18.5-GCC-11.2.0") ) then
    load("GStreamer/1.18.5-GCC-11.2.0")
end

if not ( isloaded("OpenJPEG/2.4.0-GCCcore-11.2.0") ) then
    load("OpenJPEG/2.4.0-GCCcore-11.2.0")
end

if not ( isloaded("Ruby/3.0.1-GCCcore-11.2.0") ) then
    load("Ruby/3.0.1-GCCcore-11.2.0")
end

if not ( isloaded("GSL/2.7-GCC-11.2.0") ) then
    load("GSL/2.7-GCC-11.2.0")
end

if not ( isloaded("glew/2.2.0-GCCcore-11.2.0-egl") ) then
    load("glew/2.2.0-GCCcore-11.2.0-egl")
end

if not ( isloaded("libwpe/1.13.3-GCCcore-11.2.0") ) then
    load("libwpe/1.13.3-GCCcore-11.2.0")
end

if not ( isloaded("pugixml/1.12.1-GCCcore-11.2.0") ) then
    load("pugixml/1.12.1-GCCcore-11.2.0")
end

if not ( isloaded("Wayland/1.21.0-GCCcore-11.2.0") ) then
    load("Wayland/1.21.0-GCCcore-11.2.0")
end

if not ( isloaded("Waylandpp/1.0.0-GCCcore-11.2.0") ) then
    load("Waylandpp/1.0.0-GCCcore-11.2.0")
end

if not ( isloaded("wpebackend-fdo/1.13.1-GCCcore-11.2.0") ) then
    load("wpebackend-fdo/1.13.1-GCCcore-11.2.0")
end

if not ( isloaded("enchant-2/2.3.3-GCCcore-11.2.0") ) then
    load("enchant-2/2.3.3-GCCcore-11.2.0")
end

if not ( isloaded("LittleCMS/2.12-GCCcore-11.2.0") ) then
    load("LittleCMS/2.12-GCCcore-11.2.0")
end

if not ( isloaded("GST-plugins-base/1.18.5-GCC-11.2.0") ) then
    load("GST-plugins-base/1.18.5-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTWEBKITGTKPLUS", root)
setenv("EBVERSIONWEBKITGTKPLUS", "2.37.1")
setenv("EBDEVELWEBKITGTKPLUS", pathJoin(root, "logs/WebKitGTK+-2.37.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
