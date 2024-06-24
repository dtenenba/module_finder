help([==[

Description
===========
Sound eXchange, the Swiss Army knife of audio manipulation


More information
================
 - Homepage: http://sox.sourceforge.net/
 - Documentation:
    - http://sox.sourceforge.net/Docs/Documentation
]==])

whatis([==[Description: Sound eXchange, the Swiss Army knife of audio manipulation]==])
whatis([==[Homepage: http://sox.sourceforge.net/]==])
whatis([==[URL: http://sox.sourceforge.net/]==])

local root = "/app/software/SoX/14.4.2-GCCcore-11.3.0"

conflict("SoX")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("FLAC/1.3.4-GCCcore-11.3.0") ) then
    load("FLAC/1.3.4-GCCcore-11.3.0")
end

if not ( isloaded("LAME/3.100-GCCcore-11.3.0") ) then
    load("LAME/3.100-GCCcore-11.3.0")
end

if not ( isloaded("libmad/0.15.1b-GCCcore-11.3.0") ) then
    load("libmad/0.15.1b-GCCcore-11.3.0")
end

if not ( isloaded("libvorbis/1.3.7-GCCcore-11.3.0") ) then
    load("libvorbis/1.3.7-GCCcore-11.3.0")
end

if not ( isloaded("FFmpeg/4.4.2-GCCcore-11.3.0") ) then
    load("FFmpeg/4.4.2-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSOX", root)
setenv("EBVERSIONSOX", "14.4.2")
setenv("EBDEVELSOX", pathJoin(root, "logs/SoX-14.4.2-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.2
