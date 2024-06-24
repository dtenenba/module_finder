help([==[

Description
===========
FreeImage is an Open Source library project for developers who would like to support popular graphics
image formats like PNG, BMP, JPEG, TIFF and others as needed by today's multimedia applications. FreeImage is easy to
use, fast, multithreading safe.


More information
================
 - Homepage: http://freeimage.sourceforge.net
]==])

whatis([==[Description: FreeImage is an Open Source library project for developers who would like to support popular graphics
image formats like PNG, BMP, JPEG, TIFF and others as needed by today's multimedia applications. FreeImage is easy to
use, fast, multithreading safe.]==])
whatis([==[Homepage: http://freeimage.sourceforge.net]==])
whatis([==[URL: http://freeimage.sourceforge.net]==])

local root = "/app/software/FreeImage/3.18.0-GCCcore-11.2.0"

conflict("FreeImage")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFREEIMAGE", root)
setenv("EBVERSIONFREEIMAGE", "3.18.0")
setenv("EBDEVELFREEIMAGE", pathJoin(root, "logs/FreeImage-3.18.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
