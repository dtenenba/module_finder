help([==[

Description
===========
Poppler is a PDF rendering library


More information
================
 - Homepage: https://poppler.freedesktop.org
]==])

whatis([==[Description: Poppler is a PDF rendering library]==])
whatis([==[Homepage: https://poppler.freedesktop.org]==])
whatis([==[URL: https://poppler.freedesktop.org]==])

local root = "/app/software/poppler/24.03.0-GCC-13.2.0"

conflict("poppler")

if not ( isloaded("GCC/13.2.0") ) then
    load("GCC/13.2.0")
end

if not ( isloaded("freetype/2.13.2-GCCcore-13.2.0") ) then
    load("freetype/2.13.2-GCCcore-13.2.0")
end

if not ( isloaded("fontconfig/2.14.2-GCCcore-13.2.0") ) then
    load("fontconfig/2.14.2-GCCcore-13.2.0")
end

if not ( isloaded("libjpeg-turbo/3.0.1-GCCcore-13.2.0") ) then
    load("libjpeg-turbo/3.0.1-GCCcore-13.2.0")
end

if not ( isloaded("libpng/1.6.40-GCCcore-13.2.0") ) then
    load("libpng/1.6.40-GCCcore-13.2.0")
end

if not ( isloaded("NSS/3.94-GCCcore-13.2.0") ) then
    load("NSS/3.94-GCCcore-13.2.0")
end

if not ( isloaded("LibTIFF/4.6.0-GCCcore-13.2.0") ) then
    load("LibTIFF/4.6.0-GCCcore-13.2.0")
end

if not ( isloaded("Qt5/5.15.13-GCCcore-13.2.0") ) then
    load("Qt5/5.15.13-GCCcore-13.2.0")
end

if not ( isloaded("Boost/1.83.0-GCC-13.2.0") ) then
    load("Boost/1.83.0-GCC-13.2.0")
end

if not ( isloaded("cairo/1.18.0-GCCcore-13.2.0") ) then
    load("cairo/1.18.0-GCCcore-13.2.0")
end

if not ( isloaded("LittleCMS/2.15-GCCcore-13.2.0") ) then
    load("LittleCMS/2.15-GCCcore-13.2.0")
end

if not ( isloaded("OpenJPEG/2.5.0-GCCcore-13.2.0") ) then
    load("OpenJPEG/2.5.0-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPOPPLER", root)
setenv("EBVERSIONPOPPLER", "24.03.0")
setenv("EBDEVELPOPPLER", pathJoin(root, "logs/poppler-24.03.0-GCC-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
