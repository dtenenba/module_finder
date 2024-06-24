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
llvmlite-0.42.0, numba-0.59.1
]==])

whatis([==[Description: Numba is an Open Source NumPy-aware optimizing compiler for
Python sponsored by Continuum Analytics, Inc. It uses the remarkable LLVM
compiler infrastructure to compile Python syntax to machine code.]==])
whatis([==[Homepage: https://numba.pydata.org/]==])
whatis([==[URL: https://numba.pydata.org/]==])
whatis([==[Extensions: llvmlite-0.42.0, numba-0.59.1]==])

local root = "/app/software/numba/0.59.1-foss-2023b"

conflict("numba")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNUMBA", root)
setenv("EBVERSIONNUMBA", "0.59.1")
setenv("EBDEVELNUMBA", pathJoin(root, "logs/numba-0.59.1-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTNUMBA", "llvmlite-0.42.0,numba-0.59.1")
