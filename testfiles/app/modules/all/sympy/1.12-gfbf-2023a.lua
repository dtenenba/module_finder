help([==[

Description
===========
SymPy is a Python library for symbolic mathematics. It aims to
 become a full-featured computer algebra system (CAS) while keeping the code as
 simple as possible in order to be comprehensible and easily extensible. SymPy
 is written entirely in Python and does not require any external libraries.


More information
================
 - Homepage: https://sympy.org/
]==])

whatis([==[Description: SymPy is a Python library for symbolic mathematics. It aims to
 become a full-featured computer algebra system (CAS) while keeping the code as
 simple as possible in order to be comprehensible and easily extensible. SymPy
 is written entirely in Python and does not require any external libraries.]==])
whatis([==[Homepage: https://sympy.org/]==])
whatis([==[URL: https://sympy.org/]==])

local root = "/app/software/sympy/1.12-gfbf-2023a"

conflict("sympy")

if not ( isloaded("gfbf/2023a") ) then
    load("gfbf/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("gmpy2/2.1.5-GCC-12.3.0") ) then
    load("gmpy2/2.1.5-GCC-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSYMPY", root)
setenv("EBVERSIONSYMPY", "1.12")
setenv("EBDEVELSYMPY", pathJoin(root, "logs/sympy-1.12-gfbf-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
