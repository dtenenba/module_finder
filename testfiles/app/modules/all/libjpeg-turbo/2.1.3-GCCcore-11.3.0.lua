help([==[

Description
===========
libjpeg-turbo is a fork of the original IJG libjpeg which uses SIMD to
 accelerate baseline JPEG compression and decompression. libjpeg is a library
 that implements JPEG image encoding, decoding and transcoding.


More information
================
 - Homepage: https://sourceforge.net/projects/libjpeg-turbo/
]==])

whatis([==[Description: 
 libjpeg-turbo is a fork of the original IJG libjpeg which uses SIMD to
 accelerate baseline JPEG compression and decompression. libjpeg is a library
 that implements JPEG image encoding, decoding and transcoding.
]==])
whatis([==[Homepage: https://sourceforge.net/projects/libjpeg-turbo/]==])
whatis([==[URL: https://sourceforge.net/projects/libjpeg-turbo/]==])

local root = "/app/software/libjpeg-turbo/2.1.3-GCCcore-11.3.0"

conflict("libjpeg-turbo")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("NASM/2.15.05-GCCcore-11.3.0") ) then
    load("NASM/2.15.05-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBJPEGMINTURBO", root)
setenv("EBVERSIONLIBJPEGMINTURBO", "2.1.3")
setenv("EBDEVELLIBJPEGMINTURBO", pathJoin(root, "logs/libjpeg-turbo-2.1.3-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
