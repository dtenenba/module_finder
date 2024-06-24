help([==[

Description
===========
PETSc, pronounced PET-see (the S is silent), is a suite of data structures and routines for the
 scalable (parallel) solution of scientific applications modeled by partial differential equations.


More information
================
 - Homepage: https://www.mcs.anl.gov/petsc
]==])

whatis([==[Description: PETSc, pronounced PET-see (the S is silent), is a suite of data structures and routines for the
 scalable (parallel) solution of scientific applications modeled by partial differential equations.]==])
whatis([==[Homepage: https://www.mcs.anl.gov/petsc]==])
whatis([==[URL: https://www.mcs.anl.gov/petsc]==])

local root = "/app/software/PETSc/3.14.4-foss-2020b"

conflict("PETSc")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
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

if not ( isloaded("METIS/5.1.0-GCCcore-10.2.0") ) then
    load("METIS/5.1.0-GCCcore-10.2.0")
end

if not ( isloaded("SCOTCH/6.1.0-gompi-2020b") ) then
    load("SCOTCH/6.1.0-gompi-2020b")
end

if not ( isloaded("MUMPS/5.3.5-foss-2020b-metis") ) then
    load("MUMPS/5.3.5-foss-2020b-metis")
end

if not ( isloaded("SuiteSparse/5.8.1-foss-2020b-METIS-5.1.0") ) then
    load("SuiteSparse/5.8.1-foss-2020b-METIS-5.1.0")
end

if not ( isloaded("Hypre/2.20.0-foss-2020b") ) then
    load("Hypre/2.20.0-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "lib/petsc/bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/petsc/bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPETSC", root)
setenv("EBVERSIONPETSC", "3.14.4")
setenv("EBDEVELPETSC", pathJoin(root, "logs/PETSc-3.14.4-foss-2020b-easybuild-devel"))

setenv("PETSC_DIR", "/app/software/PETSc/3.14.4-foss-2020b")
-- Built with EasyBuild version 4.6.0
