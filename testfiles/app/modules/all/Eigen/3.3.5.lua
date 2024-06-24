help([==[

Description
===========
Eigen is a C++ template library for linear algebra:
 matrices, vectors, numerical solvers, and related algorithms.


More information
================
 - Homepage: http://eigen.tuxfamily.org/index.php?title=Main_Page
]==])

whatis([==[Description: 
 Eigen is a C++ template library for linear algebra:
 matrices, vectors, numerical solvers, and related algorithms.
]==])
whatis([==[Homepage: http://eigen.tuxfamily.org/index.php?title=Main_Page]==])

local root = "/app/software/Eigen/3.3.5"

conflict("Eigen")

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
setenv("EBROOTEIGEN", root)
setenv("EBVERSIONEIGEN", "3.3.5")
setenv("EBDEVELEIGEN", pathJoin(root, "/app/logs/Eigen-3.3.5-easybuild-devel"))

-- Built with EasyBuild version 3.8.0
