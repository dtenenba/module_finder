help([==[

Description
===========
Spectra stands for Sparse Eigenvalue Computation Toolkit as a Redesigned ARPACK. It is a C++
 library for large scale eigenvalue problems, built on top of Eigen, an open source linear algebra library.


More information
================
 - Homepage: https://spectralib.org/
]==])

whatis([==[Description: Spectra stands for Sparse Eigenvalue Computation Toolkit as a Redesigned ARPACK. It is a C++
 library for large scale eigenvalue problems, built on top of Eigen, an open source linear algebra library.]==])
whatis([==[Homepage: https://spectralib.org/]==])
whatis([==[URL: https://spectralib.org/]==])

local root = "/app/software/SpectrA/1.0.1-GCC-11.2.0"

conflict("SpectrA")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Eigen/3.4.0-GCCcore-11.2.0") ) then
    load("Eigen/3.4.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSPECTRA", root)
setenv("EBVERSIONSPECTRA", "1.0.1")
setenv("EBDEVELSPECTRA", pathJoin(root, "logs/SpectrA-1.0.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
