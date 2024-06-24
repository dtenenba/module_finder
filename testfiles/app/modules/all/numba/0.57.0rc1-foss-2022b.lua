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
llvmlite-0.40.0rc1, numba-0.57.0rc1
]==])

whatis([==[Description: Numba is an Open Source NumPy-aware optimizing compiler for
Python sponsored by Continuum Analytics, Inc. It uses the remarkable LLVM
compiler infrastructure to compile Python syntax to machine code.]==])
whatis([==[Homepage: https://numba.pydata.org/]==])
whatis([==[URL: https://numba.pydata.org/]==])
whatis([==[Extensions: llvmlite-0.40.0rc1, numba-0.57.0rc1]==])

local root = "/app/software/numba/0.57.0rc1-foss-2022b"

conflict("numba")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("LLVM/14.0.6-GCCcore-12.2.0") ) then
    load("LLVM/14.0.6-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMBA", root)
setenv("EBVERSIONNUMBA", "0.57.0rc1")
setenv("EBDEVELNUMBA", pathJoin(root, "logs/numba-0.57.0rc1-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTNUMBA", "llvmlite-0.40.0rc1,numba-0.57.0rc1")
