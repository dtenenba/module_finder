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

local root = "/app/software/ImageMagick/7.0.9-5-GCCcore-8.3.0"

conflict("ImageMagick")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

if not ( isloaded("Ghostscript/9.50-GCCcore-8.3.0") ) then
    load("Ghostscript/9.50-GCCcore-8.3.0")
end

if not ( isloaded("JasPer/2.0.14-GCCcore-8.3.0") ) then
    load("JasPer/2.0.14-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

if not ( isloaded("LittleCMS/2.9-GCCcore-8.3.0") ) then
    load("LittleCMS/2.9-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIMAGEMAGICK", root)
setenv("EBVERSIONIMAGEMAGICK", "7.0.9-5")
setenv("EBDEVELIMAGEMAGICK", pathJoin(root, "logs/ImageMagick-7.0.9-5-GCCcore-8.3.0-easybuild-devel"))

setenv("MAGICK_HOME", "/app/software/ImageMagick/7.0.9-5-GCCcore-8.3.0")
-- Built with EasyBuild version 4.1.2
