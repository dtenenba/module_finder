help([==[

Description
===========
UnZip is an extraction utility for archives compressed
in .zip format (also called "zipfiles"). Although highly compatible both
with PKWARE's PKZIP and PKUNZIP utilities for MS-DOS and with Info-ZIP's
own Zip program, our primary objectives have been portability and
non-MSDOS functionality.


More information
================
 - Homepage: http://www.info-zip.org/UnZip.html
]==])

whatis([==[Description: UnZip is an extraction utility for archives compressed
in .zip format (also called "zipfiles"). Although highly compatible both
with PKWARE's PKZIP and PKUNZIP utilities for MS-DOS and with Info-ZIP's
own Zip program, our primary objectives have been portability and
non-MSDOS functionality.]==])
whatis([==[Homepage: http://www.info-zip.org/UnZip.html]==])
whatis([==[URL: http://www.info-zip.org/UnZip.html]==])

local root = "/app/software/UnZip/6.0-GCCcore-8.3.0"

conflict("UnZip")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTUNZIP", root)
setenv("EBVERSIONUNZIP", "6.0")
setenv("EBDEVELUNZIP", pathJoin(root, "logs/UnZip-6.0-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
