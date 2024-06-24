help([==[

Description
===========
ImageMagick is a software suite to create, edit, compose, or convert bitmap images


More information
================
 - Homepage: https://www.imagemagick.org/
]==])

whatis([==[Description: ImageMagick is a software suite to create, edit, compose, or convert bitmap images]==])
whatis([==[Homepage: https://www.imagemagick.org/]==])
whatis([==[URL: https://www.imagemagick.org/]==])

local root = "/app/software/ImageMagick/7.1.0-37-GCCcore-11.3.0"

conflict("ImageMagick")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.3.0") ) then
    load("bzip2/1.0.8-GCCcore-11.3.0")
end

if not ( isloaded("X11/20220504-GCCcore-11.3.0") ) then
    load("X11/20220504-GCCcore-11.3.0")
end

if not ( isloaded("Ghostscript/9.56.1-GCCcore-11.3.0") ) then
    load("Ghostscript/9.56.1-GCCcore-11.3.0")
end

if not ( isloaded("JasPer/2.0.33-GCCcore-11.3.0") ) then
    load("JasPer/2.0.33-GCCcore-11.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.3-GCCcore-11.3.0") ) then
    load("libjpeg-turbo/2.1.3-GCCcore-11.3.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.3.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.3.0")
end

if not ( isloaded("LittleCMS/2.13.1-GCCcore-11.3.0") ) then
    load("LittleCMS/2.13.1-GCCcore-11.3.0")
end

if not ( isloaded("Pango/1.50.7-GCCcore-11.3.0") ) then
    load("Pango/1.50.7-GCCcore-11.3.0")
end

if not ( isloaded("pixman/0.40.0-GCCcore-11.3.0") ) then
    load("pixman/0.40.0-GCCcore-11.3.0")
end

if not ( isloaded("FriBidi/1.0.12-GCCcore-11.3.0") ) then
    load("FriBidi/1.0.12-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIMAGEMAGICK", root)
setenv("EBVERSIONIMAGEMAGICK", "7.1.0-37")
setenv("EBDEVELIMAGEMAGICK", pathJoin(root, "logs/ImageMagick-7.1.0-37-GCCcore-11.3.0-easybuild-devel"))

setenv("MAGICK_HOME", "/app/software/ImageMagick/7.1.0-37-GCCcore-11.3.0")
-- Built with EasyBuild version 4.9.1
