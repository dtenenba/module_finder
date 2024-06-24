help([==[

Description
===========
Cython is an optimising static compiler for both the Python programming
language and the extended Cython programming language (based on Pyrex).


More information
================
 - Homepage: https://cython.org/
 - Documentation:
    - https://cython.org/#documentation
    - https://github.com/cython/cython
]==])

whatis([==[Description: 
Cython is an optimising static compiler for both the Python programming
language and the extended Cython programming language (based on Pyrex).
]==])
whatis([==[Homepage: https://cython.org/]==])
whatis([==[URL: https://cython.org/]==])

local root = "/app/software/Cython/3.0.7-GCCcore-12.3.0"

conflict("Cython")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCYTHON", root)
setenv("EBVERSIONCYTHON", "3.0.7")
setenv("EBDEVELCYTHON", pathJoin(root, "logs/Cython-3.0.7-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
