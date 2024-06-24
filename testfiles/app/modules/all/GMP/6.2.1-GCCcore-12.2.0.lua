help([==[

Description
===========
GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.


More information
================
 - Homepage: https://gmplib.org/
]==])

whatis([==[Description: 
 GMP is a free library for arbitrary precision arithmetic, operating on signed
 integers, rational numbers, and floating point numbers.
]==])
whatis([==[Homepage: https://gmplib.org/]==])
whatis([==[URL: https://gmplib.org/]==])

local root = "/app/software/GMP/6.2.1-GCCcore-12.2.0"

conflict("GMP")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGMP", root)
setenv("EBVERSIONGMP", "6.2.1")
setenv("EBDEVELGMP", pathJoin(root, "logs/GMP-6.2.1-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
