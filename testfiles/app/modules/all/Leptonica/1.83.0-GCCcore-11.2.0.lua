help([==[

Description
===========
Leptonica is a collection of pedagogically-oriented open source software
 that is broadly useful for image processing and image analysis applications.


More information
================
 - Homepage: http://www.leptonica.org
]==])

whatis([==[Description: Leptonica is a collection of pedagogically-oriented open source software
 that is broadly useful for image processing and image analysis applications.]==])
whatis([==[Homepage: http://www.leptonica.org]==])
whatis([==[URL: http://www.leptonica.org]==])

local root = "/app/software/Leptonica/1.83.0-GCCcore-11.2.0"

conflict("Leptonica")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.2.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-11.2.0") ) then
    load("giflib/5.2.1-GCCcore-11.2.0")
end

if not ( isloaded("libwebp/1.2.0-GCCcore-11.2.0") ) then
    load("libwebp/1.2.0-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLEPTONICA", root)
setenv("EBVERSIONLEPTONICA", "1.83.0")
setenv("EBDEVELLEPTONICA", pathJoin(root, "logs/Leptonica-1.83.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.0
