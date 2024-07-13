help([==[

Description
===========
WebP is a modern image format that provides superior
lossless and lossy compression for images on the web. Using WebP,
webmasters and web developers can create smaller, richer images that
make the web faster.


More information
================
 - Homepage: https://developers.google.com/speed/webp/
]==])

whatis([==[Description: WebP is a modern image format that provides superior
lossless and lossy compression for images on the web. Using WebP,
webmasters and web developers can create smaller, richer images that
make the web faster.]==])
whatis([==[Homepage: https://developers.google.com/speed/webp/]==])
whatis([==[URL: https://developers.google.com/speed/webp/]==])

local root = "/app/software/libwebp/1.0.3-GCCcore-8.3.0"

conflict("libwebp")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

if not ( isloaded("giflib/5.0.5-GCCcore-8.3.0") ) then
    load("giflib/5.0.5-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBWEBP", root)
setenv("EBVERSIONLIBWEBP", "1.0.3")
setenv("EBDEVELLIBWEBP", pathJoin(root, "logs/libwebp-1.0.3-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2