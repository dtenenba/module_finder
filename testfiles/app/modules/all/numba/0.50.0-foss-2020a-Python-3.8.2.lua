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
llvmlite-0.33.0, numba-0.50.0
]==])

whatis([==[Description: Numba is an Open Source NumPy-aware optimizing compiler for
Python sponsored by Continuum Analytics, Inc. It uses the remarkable LLVM
compiler infrastructure to compile Python syntax to machine code.]==])
whatis([==[Homepage: https://numba.pydata.org/]==])
whatis([==[URL: https://numba.pydata.org/]==])
whatis([==[Extensions: llvmlite-0.33.0, numba-0.50.0]==])

local root = "/app/software/numba/0.50.0-foss-2020a-Python-3.8.2"

conflict("numba")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2")
end

if not ( isloaded("LLVM/9.0.1-GCCcore-9.3.0") ) then
    load("LLVM/9.0.1-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMBA", root)
setenv("EBVERSIONNUMBA", "0.50.0")
setenv("EBDEVELNUMBA", pathJoin(root, "logs/numba-0.50.0-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTNUMBA", "llvmlite-0.33.0,numba-0.50.0")
