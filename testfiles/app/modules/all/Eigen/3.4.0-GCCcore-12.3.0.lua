help([==[

Description
===========
Eigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers,
 and related algorithms.


More information
================
 - Homepage: https://eigen.tuxfamily.org
]==])

whatis([==[Description: Eigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers,
 and related algorithms.]==])
whatis([==[Homepage: https://eigen.tuxfamily.org]==])
whatis([==[URL: https://eigen.tuxfamily.org]==])

local root = "/app/software/Eigen/3.4.0-GCCcore-12.3.0"

conflict("Eigen")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEIGEN", root)
setenv("EBVERSIONEIGEN", "3.4.0")
setenv("EBDEVELEIGEN", pathJoin(root, "logs/Eigen-3.4.0-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
