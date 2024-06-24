help([==[

Description
===========
PLUMED is an open source library for free energy calculations in molecular systems which
 works together with some of the most popular molecular dynamics engines. Free energy calculations can be
 performed as a function of many order parameters with a particular  focus on biological problems, using
 state of the art methods such as metadynamics, umbrella sampling and Jarzynski-equation based steered MD.
 The software, written in C++, can be easily interfaced with both fortran and C/C++ codes.


More information
================
 - Homepage: https://www.plumed.org
]==])

whatis([==[Description: PLUMED is an open source library for free energy calculations in molecular systems which
 works together with some of the most popular molecular dynamics engines. Free energy calculations can be
 performed as a function of many order parameters with a particular  focus on biological problems, using
 state of the art methods such as metadynamics, umbrella sampling and Jarzynski-equation based steered MD.
 The software, written in C++, can be easily interfaced with both fortran and C/C++ codes.
]==])
whatis([==[Homepage: https://www.plumed.org]==])
whatis([==[URL: https://www.plumed.org]==])

local root = "/app/software/PLUMED/2.7.0-foss-2020b"

conflict("PLUMED")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("GSL/2.6-GCC-10.2.0") ) then
    load("GSL/2.6-GCC-10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPLUMED", root)
setenv("EBVERSIONPLUMED", "2.7.0")
setenv("EBDEVELPLUMED", pathJoin(root, "logs/PLUMED-2.7.0-foss-2020b-easybuild-devel"))

prepend_path("PLUMED_KERNEL", pathJoin(root, "lib/libplumedKernel.so"))
prepend_path("PLUMED_ROOT", pathJoin(root, "lib/plumed"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/plumed/python"))
-- Built with EasyBuild version 4.5.1
