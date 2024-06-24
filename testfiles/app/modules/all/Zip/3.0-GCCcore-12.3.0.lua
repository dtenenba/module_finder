help([==[

Description
===========
Zip is a compression and file packaging/archive utility.
Although highly compatible both with PKWARE's PKZIP and PKUNZIP
utilities for MS-DOS and with Info-ZIP's own UnZip, our primary objectives
have been portability and other-than-MSDOS functionality


More information
================
 - Homepage: http://www.info-zip.org/Zip.html
]==])

whatis([==[Description: Zip is a compression and file packaging/archive utility.
Although highly compatible both with PKWARE's PKZIP and PKUNZIP
utilities for MS-DOS and with Info-ZIP's own UnZip, our primary objectives
have been portability and other-than-MSDOS functionality]==])
whatis([==[Homepage: http://www.info-zip.org/Zip.html]==])
whatis([==[URL: http://www.info-zip.org/Zip.html]==])

local root = "/app/software/Zip/3.0-GCCcore-12.3.0"

conflict("Zip")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.3.0") ) then
    load("bzip2/1.0.8-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTZIP", root)
setenv("EBVERSIONZIP", "3.0")
setenv("EBDEVELZIP", pathJoin(root, "logs/Zip-3.0-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
