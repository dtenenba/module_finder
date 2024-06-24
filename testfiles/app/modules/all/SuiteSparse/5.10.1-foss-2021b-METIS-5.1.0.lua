help([==[

Description
===========
SuiteSparse is a collection of libraries manipulate sparse matrices.


More information
================
 - Homepage: https://faculty.cse.tamu.edu/davis/suitesparse.html
]==])

whatis([==[Description: SuiteSparse is a collection of libraries manipulate sparse matrices.]==])
whatis([==[Homepage: https://faculty.cse.tamu.edu/davis/suitesparse.html]==])
whatis([==[URL: https://faculty.cse.tamu.edu/davis/suitesparse.html]==])

local root = "/app/software/SuiteSparse/5.10.1-foss-2021b-METIS-5.1.0"

conflict("SuiteSparse")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("METIS/5.1.0-GCCcore-11.2.0") ) then
    load("METIS/5.1.0-GCCcore-11.2.0")
end

if not ( isloaded("MPFR/4.1.0-GCCcore-11.2.0") ) then
    load("MPFR/4.1.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSUITESPARSE", root)
setenv("EBVERSIONSUITESPARSE", "5.10.1")
setenv("EBDEVELSUITESPARSE", pathJoin(root, "logs/SuiteSparse-5.10.1-foss-2021b-METIS-5.1.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
