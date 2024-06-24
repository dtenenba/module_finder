help([==[

Description
===========
Armadillo is an open-source C++ linear algebra library (matrix maths) aiming towards
 a good balance between speed and ease of use. Integer, floating point and complex numbers are supported,
 as well as a subset of trigonometric and statistics functions.


More information
================
 - Homepage: https://arma.sourceforge.net/
]==])

whatis([==[Description: Armadillo is an open-source C++ linear algebra library (matrix maths) aiming towards
 a good balance between speed and ease of use. Integer, floating point and complex numbers are supported,
 as well as a subset of trigonometric and statistics functions.]==])
whatis([==[Homepage: https://arma.sourceforge.net/]==])
whatis([==[URL: https://arma.sourceforge.net/]==])

local root = "/app/software/Armadillo/11.4.3-foss-2022b"

conflict("Armadillo")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Boost/1.81.0-GCC-12.2.0") ) then
    load("Boost/1.81.0-GCC-12.2.0")
end

if not ( isloaded("arpack-ng/3.8.0-foss-2022b") ) then
    load("arpack-ng/3.8.0-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARMADILLO", root)
setenv("EBVERSIONARMADILLO", "11.4.3")
setenv("EBDEVELARMADILLO", pathJoin(root, "logs/Armadillo-11.4.3-foss-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
