help([==[

Description
===========
WebKitGTK+ is a full-featured port of the WebKit
rendering engine, suitable for projects requiring any kind of web
integration, from hybrid HTML/CSS applications to full-fledged web
browsers. It offers WebKit’s full functionality and is useful in a wide
range of systems from desktop computers to embedded systems like phones,
tablets, and televisions.


More information
================
 - Homepage: https://webkitgtk.org/
]==])

whatis([==[Description: WebKitGTK+ is a full-featured port of the WebKit
rendering engine, suitable for projects requiring any kind of web
integration, from hybrid HTML/CSS applications to full-fledged web
browsers. It offers WebKit’s full functionality and is useful in a wide
range of systems from desktop computers to embedded systems like phones,
tablets, and televisions.]==])
whatis([==[Homepage: https://webkitgtk.org/]==])
whatis([==[URL: https://webkitgtk.org/]==])

local root = "/app/software/WebKitGTK+/2.30.6-GCC-10.2.0"

conflict("WebKitGTK+")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("GLib/2.66.1-GCCcore-10.2.0") ) then
    load("GLib/2.66.1-GCCcore-10.2.0")
end

if not ( isloaded("gperf/3.1-GCCcore-10.2.0") ) then
    load("gperf/3.1-GCCcore-10.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-10.2.0") ) then
    load("cairo/1.16.0-GCCcore-10.2.0")
end

if not ( isloaded("GTK+/3.24.23-GCCcore-10.2.0") ) then
    load("GTK+/3.24.23-GCCcore-10.2.0")
end

if not ( isloaded("LibSoup/2.72.0-GCCcore-10.2.0") ) then
    load("LibSoup/2.72.0-GCCcore-10.2.0")
end

if not ( isloaded("ATK/2.36.0-GCCcore-10.2.0") ) then
    load("ATK/2.36.0-GCCcore-10.2.0")
end

if not ( isloaded("libgcrypt/1.9.2-GCCcore-10.2.0") ) then
    load("libgcrypt/1.9.2-GCCcore-10.2.0")
end

if not ( isloaded("libwebp/1.1.0-GCCcore-10.2.0") ) then
    load("libwebp/1.1.0-GCCcore-10.2.0")
end

if not ( isloaded("libxslt/1.1.34-GCC-10.2.0") ) then
    load("libxslt/1.1.34-GCC-10.2.0")
end

if not ( isloaded("libtasn1/4.16.0-GCCcore-10.2.0") ) then
    load("libtasn1/4.16.0-GCCcore-10.2.0")
end

if not ( isloaded("GStreamer/1.18.3-GCC-10.2.0") ) then
    load("GStreamer/1.18.3-GCC-10.2.0")
end

if not ( isloaded("OpenJPEG/2.4.0-GCCcore-10.2.0") ) then
    load("OpenJPEG/2.4.0-GCCcore-10.2.0")
end

if not ( isloaded("Ruby/2.7.2-GCCcore-10.2.0") ) then
    load("Ruby/2.7.2-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTWEBKITGTKPLUS", root)
setenv("EBVERSIONWEBKITGTKPLUS", "2.30.6")
setenv("EBDEVELWEBKITGTKPLUS", pathJoin(root, "logs/WebKitGTK+-2.30.6-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
