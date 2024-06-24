help([==[

Description
===========
EMBOSS is 'The European Molecular Biology Open Software Suite'
. EMBOSS is a free Open Source software analysis package specially developed
 for the needs of the molecular biology (e.g. EMBnet) user community.


More information
================
 - Homepage: http://emboss.sourceforge.net/
]==])

whatis([==[Description: EMBOSS is 'The European Molecular Biology Open Software Suite'
. EMBOSS is a free Open Source software analysis package specially developed
 for the needs of the molecular biology (e.g. EMBnet) user community.]==])
whatis([==[Homepage: http://emboss.sourceforge.net/]==])
whatis([==[URL: http://emboss.sourceforge.net/]==])

local root = "/app/software/EMBOSS/6.6.0-foss-2023b"

conflict("EMBOSS")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("X11/20231019-GCCcore-13.2.0") ) then
    load("X11/20231019-GCCcore-13.2.0")
end

if not ( isloaded("libharu/2.3.0-GCCcore-13.2.0") ) then
    load("libharu/2.3.0-GCCcore-13.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEMBOSS", root)
setenv("EBVERSIONEMBOSS", "6.6.0")
setenv("EBDEVELEMBOSS", pathJoin(root, "logs/EMBOSS-6.6.0-foss-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
