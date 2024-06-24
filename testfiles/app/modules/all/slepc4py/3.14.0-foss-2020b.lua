help([==[

Description
===========
Python bindings for SLEPc, the Scalable Library for Eigenvalue Problem Computations.


More information
================
 - Homepage: https://bitbucket.org/slepc/slepc4py
]==])

whatis([==[Description: Python bindings for SLEPc, the Scalable Library for Eigenvalue Problem Computations.]==])
whatis([==[Homepage: https://bitbucket.org/slepc/slepc4py]==])
whatis([==[URL: https://bitbucket.org/slepc/slepc4py]==])

local root = "/app/software/slepc4py/3.14.0-foss-2020b"

conflict("slepc4py")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SLEPc/3.14.2-foss-2020b") ) then
    load("SLEPc/3.14.2-foss-2020b")
end

if not ( isloaded("petsc4py/3.14.1-foss-2020b") ) then
    load("petsc4py/3.14.1-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSLEPC4PY", root)
setenv("EBVERSIONSLEPC4PY", "3.14.0")
setenv("EBDEVELSLEPC4PY", pathJoin(root, "logs/slepc4py-3.14.0-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.6.0
