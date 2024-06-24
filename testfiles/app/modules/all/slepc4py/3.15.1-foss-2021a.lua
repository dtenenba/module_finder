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

local root = "/app/software/slepc4py/3.15.1-foss-2021a"

conflict("slepc4py")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SLEPc/3.15.1-foss-2021a") ) then
    load("SLEPc/3.15.1-foss-2021a")
end

if not ( isloaded("petsc4py/3.15.0-foss-2021a") ) then
    load("petsc4py/3.15.0-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSLEPC4PY", root)
setenv("EBVERSIONSLEPC4PY", "3.15.1")
setenv("EBDEVELSLEPC4PY", pathJoin(root, "logs/slepc4py-3.15.1-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
