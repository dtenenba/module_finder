help([==[

Description
===========
Tesseract is an optical character recognition engine


More information
================
 - Homepage: https://github.com/tesseract-ocr/tesseract
]==])

whatis([==[Description: Tesseract is an optical character recognition engine]==])
whatis([==[Homepage: https://github.com/tesseract-ocr/tesseract]==])
whatis([==[URL: https://github.com/tesseract-ocr/tesseract]==])

local root = "/app/software/tesseract/5.3.0-GCCcore-11.2.0"

conflict("tesseract")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.2.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.2.0")
end

if not ( isloaded("Leptonica/1.83.0-GCCcore-11.2.0") ) then
    load("Leptonica/1.83.0-GCCcore-11.2.0")
end

if not ( isloaded("libarchive/3.5.1-GCCcore-11.2.0") ) then
    load("libarchive/3.5.1-GCCcore-11.2.0")
end

if not ( isloaded("ICU/69.1-GCCcore-11.2.0") ) then
    load("ICU/69.1-GCCcore-11.2.0")
end

if not ( isloaded("fontconfig/2.13.94-GCCcore-11.2.0") ) then
    load("fontconfig/2.13.94-GCCcore-11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("cairo/1.16.0-GCCcore-11.2.0") ) then
    load("cairo/1.16.0-GCCcore-11.2.0")
end

if not ( isloaded("Pango/1.48.8-GCCcore-11.2.0") ) then
    load("Pango/1.48.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTESSERACT", root)
setenv("EBVERSIONTESSERACT", "5.3.0")
setenv("EBDEVELTESSERACT", pathJoin(root, "logs/tesseract-5.3.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("TESSDATA_PREFIX", pathJoin(root, "share/tessdata"))
-- Built with EasyBuild version 4.7.0
