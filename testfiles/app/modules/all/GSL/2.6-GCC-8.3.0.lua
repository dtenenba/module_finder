help([==[

Description
===========
The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.
 The library provides a wide range of mathematical routines such as random number generators, special functions
 and least-squares fitting.


More information
================
 - Homepage: https://www.gnu.org/software/gsl/
]==])

whatis([==[Description: The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.
 The library provides a wide range of mathematical routines such as random number generators, special functions
 and least-squares fitting.]==])
whatis([==[Homepage: https://www.gnu.org/software/gsl/]==])
whatis([==[URL: https://www.gnu.org/software/gsl/]==])

local root = "/app/software/GSL/2.6-GCC-8.3.0"

conflict("GSL")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGSL", root)
setenv("EBVERSIONGSL", "2.6")
setenv("EBDEVELGSL", pathJoin(root, "logs/GSL-2.6-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
