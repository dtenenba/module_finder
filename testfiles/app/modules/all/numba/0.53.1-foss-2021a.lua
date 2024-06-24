help([==[

Description
===========
Numba is an Open Source NumPy-aware optimizing compiler for
Python sponsored by Continuum Analytics, Inc. It uses the remarkable LLVM
compiler infrastructure to compile Python syntax to machine code.


More information
================
 - Homepage: https://numba.pydata.org/


Included extensions
===================
llvmlite-0.36.0, numba-0.53.1
]==])

whatis([==[Description: Numba is an Open Source NumPy-aware optimizing compiler for
Python sponsored by Continuum Analytics, Inc. It uses the remarkable LLVM
compiler infrastructure to compile Python syntax to machine code.]==])
whatis([==[Homepage: https://numba.pydata.org/]==])
whatis([==[URL: https://numba.pydata.org/]==])
whatis([==[Extensions: llvmlite-0.36.0, numba-0.53.1]==])

local root = "/app/software/numba/0.53.1-foss-2021a"

conflict("numba")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

if not ( isloaded("LLVM/11.1.0-GCCcore-10.3.0") ) then
    load("LLVM/11.1.0-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMBA", root)
setenv("EBVERSIONNUMBA", "0.53.1")
setenv("EBDEVELNUMBA", pathJoin(root, "logs/numba-0.53.1-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTNUMBA", "llvmlite-0.36.0,numba-0.53.1")
