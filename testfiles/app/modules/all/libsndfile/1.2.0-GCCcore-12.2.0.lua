help([==[

Description
===========
Libsndfile is a C library for reading and writing files containing sampled sound
 (such as MS Windows WAV and the Apple/SGI AIFF format) through one standard library interface.


More information
================
 - Homepage: http://www.mega-nerd.com/libsndfile
]==])

whatis([==[Description: Libsndfile is a C library for reading and writing files containing sampled sound
 (such as MS Windows WAV and the Apple/SGI AIFF format) through one standard library interface.]==])
whatis([==[Homepage: http://www.mega-nerd.com/libsndfile]==])
whatis([==[URL: http://www.mega-nerd.com/libsndfile]==])

local root = "/app/software/libsndfile/1.2.0-GCCcore-12.2.0"

conflict("libsndfile")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("FLAC/1.4.2-GCCcore-12.2.0") ) then
    load("FLAC/1.4.2-GCCcore-12.2.0")
end

if not ( isloaded("libvorbis/1.3.7-GCCcore-12.2.0") ) then
    load("libvorbis/1.3.7-GCCcore-12.2.0")
end

if not ( isloaded("libopus/1.3.1-GCCcore-12.2.0") ) then
    load("libopus/1.3.1-GCCcore-12.2.0")
end

if not ( isloaded("LAME/3.100-GCCcore-12.2.0") ) then
    load("LAME/3.100-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBSNDFILE", root)
setenv("EBVERSIONLIBSNDFILE", "1.2.0")
setenv("EBDEVELLIBSNDFILE", pathJoin(root, "logs/libsndfile-1.2.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
