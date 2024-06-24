help([==[

Description
===========
Qt is a comprehensive cross-platform C++ application framework.


More information
================
 - Homepage: https://qt.io/
]==])

whatis([==[Description: Qt is a comprehensive cross-platform C++ application framework.]==])
whatis([==[Homepage: https://qt.io/]==])
whatis([==[URL: https://qt.io/]==])

local root = "/app/software/Qt5/5.15.2-GCCcore-11.2.0"

conflict("Qt5")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("double-conversion/3.1.5-GCCcore-11.2.0") ) then
    load("double-conversion/3.1.5-GCCcore-11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("PCRE2/10.37-GCCcore-11.2.0") ) then
    load("PCRE2/10.37-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("HarfBuzz/2.8.2-GCCcore-11.2.0") ) then
    load("HarfBuzz/2.8.2-GCCcore-11.2.0")
end

if not ( isloaded("graphite2/1.3.14-GCCcore-11.2.0") ) then
    load("graphite2/1.3.14-GCCcore-11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

if not ( isloaded("fontconfig/2.13.94-GCCcore-11.2.0") ) then
    load("fontconfig/2.13.94-GCCcore-11.2.0")
end

if not ( isloaded("DBus/1.13.18-GCCcore-11.2.0") ) then
    load("DBus/1.13.18-GCCcore-11.2.0")
end

if not ( isloaded("libevent/2.1.12-GCCcore-11.2.0") ) then
    load("libevent/2.1.12-GCCcore-11.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-11.2.0") ) then
    load("libGLU/9.0.2-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("NSS/3.69-GCCcore-11.2.0") ) then
    load("NSS/3.69-GCCcore-11.2.0")
end

if not ( isloaded("snappy/1.1.9-GCCcore-11.2.0") ) then
    load("snappy/1.1.9-GCCcore-11.2.0")
end

if not ( isloaded("JasPer/2.0.33-GCCcore-11.2.0") ) then
    load("JasPer/2.0.33-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("ICU/69.1-GCCcore-11.2.0") ) then
    load("ICU/69.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQT5", root)
setenv("EBVERSIONQT5", "5.15.2")
setenv("EBDEVELQT5", pathJoin(root, "logs/Qt5-5.15.2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
