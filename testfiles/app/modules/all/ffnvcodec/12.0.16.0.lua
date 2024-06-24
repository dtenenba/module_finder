help([==[

Description
===========
FFmpeg nvidia headers. Adds support for nvenc and nvdec. Requires Nvidia GPU and drivers to be present
(picked up dynamically).


More information
================
 - Homepage: https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git
]==])

whatis([==[Description: FFmpeg nvidia headers. Adds support for nvenc and nvdec. Requires Nvidia GPU and drivers to be present
(picked up dynamically).]==])
whatis([==[Homepage: https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git]==])
whatis([==[URL: https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git]==])

local root = "/app/software/ffnvcodec/12.0.16.0"

conflict("ffnvcodec")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFFNVCODEC", root)
setenv("EBVERSIONFFNVCODEC", "12.0.16.0")
setenv("EBDEVELFFNVCODEC", pathJoin(root, "logs/ffnvcodec-12.0.16.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
