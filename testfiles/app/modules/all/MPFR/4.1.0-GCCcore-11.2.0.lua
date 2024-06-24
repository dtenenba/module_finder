help([==[

Description
===========
The MPFR library is a C library for multiple-precision floating-point
 computations with correct rounding.


More information
================
 - Homepage: https://www.mpfr.org
]==])

whatis([==[Description: 
 The MPFR library is a C library for multiple-precision floating-point
 computations with correct rounding.
]==])
whatis([==[Homepage: https://www.mpfr.org]==])
whatis([==[URL: https://www.mpfr.org]==])

local root = "/app/software/MPFR/4.1.0-GCCcore-11.2.0"

conflict("MPFR")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMPFR", root)
setenv("EBVERSIONMPFR", "4.1.0")
setenv("EBDEVELMPFR", pathJoin(root, "logs/MPFR-4.1.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
