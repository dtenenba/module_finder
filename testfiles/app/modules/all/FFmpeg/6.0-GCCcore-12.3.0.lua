help([==[

Description
===========
A complete, cross-platform solution to record, convert and stream audio and video.


More information
================
 - Homepage: https://www.ffmpeg.org/
]==])

whatis([==[Description: A complete, cross-platform solution to record, convert and stream audio and video.]==])
whatis([==[Homepage: https://www.ffmpeg.org/]==])
whatis([==[URL: https://www.ffmpeg.org/]==])

local root = "/app/software/FFmpeg/6.0-GCCcore-12.3.0"

conflict("FFmpeg")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("NASM/2.16.01-GCCcore-12.3.0") ) then
    load("NASM/2.16.01-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.3.0") ) then
    load("bzip2/1.0.8-GCCcore-12.3.0")
end

if not ( isloaded("x264/20230226-GCCcore-12.3.0") ) then
    load("x264/20230226-GCCcore-12.3.0")
end

if not ( isloaded("LAME/3.100-GCCcore-12.3.0") ) then
    load("LAME/3.100-GCCcore-12.3.0")
end

if not ( isloaded("x265/3.5-GCCcore-12.3.0") ) then
    load("x265/3.5-GCCcore-12.3.0")
end

if not ( isloaded("X11/20230603-GCCcore-12.3.0") ) then
    load("X11/20230603-GCCcore-12.3.0")
end

if not ( isloaded("freetype/2.13.0-GCCcore-12.3.0") ) then
    load("freetype/2.13.0-GCCcore-12.3.0")
end

if not ( isloaded("fontconfig/2.14.2-GCCcore-12.3.0") ) then
    load("fontconfig/2.14.2-GCCcore-12.3.0")
end

if not ( isloaded("FriBidi/1.0.12-GCCcore-12.3.0") ) then
    load("FriBidi/1.0.12-GCCcore-12.3.0")
end

if not ( isloaded("SDL2/2.28.2-GCCcore-12.3.0") ) then
    load("SDL2/2.28.2-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFFMPEG", root)
setenv("EBVERSIONFFMPEG", "6.0")
setenv("EBDEVELFFMPEG", pathJoin(root, "logs/FFmpeg-6.0-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
