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
llvmlite-0.31.0, numba-0.47.0
]==])

whatis([==[Description: Numba is an Open Source NumPy-aware optimizing compiler for
Python sponsored by Continuum Analytics, Inc. It uses the remarkable LLVM
compiler infrastructure to compile Python syntax to machine code.]==])
whatis([==[Homepage: https://numba.pydata.org/]==])
whatis([==[URL: https://numba.pydata.org/]==])
whatis([==[Extensions: llvmlite-0.31.0, numba-0.47.0]==])

local root = "/app/software/numba/0.47.0-foss-2019b-Python-3.7.4"

conflict("numba")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("LLVM/8.0.1-GCCcore-8.3.0") ) then
    load("LLVM/8.0.1-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMBA", root)
setenv("EBVERSIONNUMBA", "0.47.0")
setenv("EBDEVELNUMBA", pathJoin(root, "logs/numba-0.47.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTNUMBA", "llvmlite-0.31.0,numba-0.47.0")
