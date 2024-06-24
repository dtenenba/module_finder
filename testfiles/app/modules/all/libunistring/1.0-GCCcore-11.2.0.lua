help([==[

Description
===========
This library provides functions for manipulating Unicode strings and for
 manipulating C strings according to the Unicode standard.


More information
================
 - Homepage: https://www.gnu.org/software/libunistring/
]==])

whatis([==[Description: This library provides functions for manipulating Unicode strings and for
 manipulating C strings according to the Unicode standard.]==])
whatis([==[Homepage: https://www.gnu.org/software/libunistring/]==])
whatis([==[URL: https://www.gnu.org/software/libunistring/]==])

local root = "/app/software/libunistring/1.0-GCCcore-11.2.0"

conflict("libunistring")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBUNISTRING", root)
setenv("EBVERSIONLIBUNISTRING", "1.0")
setenv("EBDEVELLIBUNISTRING", pathJoin(root, "logs/libunistring-1.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
