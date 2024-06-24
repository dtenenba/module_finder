help([==[

Description
===========
Z3 is a theorem prover from Microsoft Research with support for bitvectors,
booleans, arrays, floating point numbers, strings, and other data types. This
module includes z3-solver, the Python interface of Z3.


More information
================
 - Homepage: https://github.com/Z3Prover/z3


Included extensions
===================
z3-solver-4.12.2.0
]==])

whatis([==[Description: Z3 is a theorem prover from Microsoft Research with support for bitvectors,
booleans, arrays, floating point numbers, strings, and other data types. This
module includes z3-solver, the Python interface of Z3.
]==])
whatis([==[Homepage: https://github.com/Z3Prover/z3]==])
whatis([==[URL: https://github.com/Z3Prover/z3]==])
whatis([==[Extensions: z3-solver-4.12.2.0]==])

local root = "/app/software/Z3/4.12.2-GCCcore-12.3.0-Python-3.11.3"

conflict("Z3")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-12.3.0") ) then
    load("GMP/6.2.1-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTZ3", root)
setenv("EBVERSIONZ3", "4.12.2")
setenv("EBDEVELZ3", pathJoin(root, "logs/Z3-4.12.2-GCCcore-12.3.0-Python-3.11.3-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTZ3", "z3-solver-4.12.2.0")
