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

local root = "/app/software/Cython/0.29.22-GCCcore-10.2.0"

conflict("Cython")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCYTHON", root)
setenv("EBVERSIONCYTHON", "0.29.22")
setenv("EBDEVELCYTHON", pathJoin(root, "logs/Cython-0.29.22-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
