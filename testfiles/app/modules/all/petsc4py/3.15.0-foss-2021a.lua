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

local root = "/app/software/petsc4py/3.15.0-foss-2021a"

conflict("petsc4py")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

if not ( isloaded("PETSc/3.15.1-foss-2021a") ) then
    load("PETSc/3.15.1-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPETSC4PY", root)
setenv("EBVERSIONPETSC4PY", "3.15.0")
setenv("EBDEVELPETSC4PY", pathJoin(root, "logs/petsc4py-3.15.0-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
