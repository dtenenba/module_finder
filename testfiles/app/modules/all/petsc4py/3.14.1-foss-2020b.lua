help([==[

Description
===========
petsc4py are Python bindings for PETSc, the Portable, Extensible Toolchain for Scientific Computation.


More information
================
 - Homepage: https://bitbucket.org/petsc/petsc4py
]==])

whatis([==[Description: petsc4py are Python bindings for PETSc, the Portable, Extensible Toolchain for Scientific Computation.]==])
whatis([==[Homepage: https://bitbucket.org/petsc/petsc4py]==])
whatis([==[URL: https://bitbucket.org/petsc/petsc4py]==])

local root = "/app/software/petsc4py/3.14.1-foss-2020b"

conflict("petsc4py")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("PETSc/3.14.4-foss-2020b") ) then
    load("PETSc/3.14.4-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPETSC4PY", root)
setenv("EBVERSIONPETSC4PY", "3.14.1")
setenv("EBDEVELPETSC4PY", pathJoin(root, "logs/petsc4py-3.14.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.6.0
