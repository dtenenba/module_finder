help([==[

Description
===========
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a GPU enabled build, containing both MPI and threadMPI builds.

It also contains the gmxapi extension for the single precision MPI build.


More information
================
 - Homepage: https://www.gromacs.org


Included extensions
===================
gmxapi-0.2.0
]==])

whatis([==[Description: 
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a GPU enabled build, containing both MPI and threadMPI builds.

It also contains the gmxapi extension for the single precision MPI build.
]==])
whatis([==[Homepage: https://www.gromacs.org]==])
whatis([==[URL: https://www.gromacs.org]==])
whatis([==[Extensions: gmxapi-0.2.0]==])

local root = "/app/software/GROMACS/2021-foss-2020b-CUDA-11.1.1-PLUMED-2.7.2"

conflict("GROMACS")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("networkx/2.5-foss-2020b") ) then
    load("networkx/2.5-foss-2020b")
end

if not ( isloaded("CUDA/11.1.1-GCC-10.2.0") ) then
    load("CUDA/11.1.1-GCC-10.2.0")
end

if not ( isloaded("PLUMED/2.7.2-foss-2020b") ) then
    load("PLUMED/2.7.2-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGROMACS", root)
setenv("EBVERSIONGROMACS", "2021")
setenv("EBDEVELGROMACS", pathJoin(root, "logs/GROMACS-2021-foss-2020b-CUDA-11.1.1-PLUMED-2.7.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.1
setenv("EBEXTSLISTGROMACS", "gmxapi-0.2.0")
