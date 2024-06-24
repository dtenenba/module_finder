help([==[

Description
===========
Spglib for Python. Spglib is a library for finding and handling crystal symmetries written in C.


More information
================
 - Homepage: https://pypi.python.org/pypi/spglib
]==])

whatis([==[Description: Spglib for Python. Spglib is a library for finding and handling crystal symmetries written in C.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/spglib]==])
whatis([==[URL: https://pypi.python.org/pypi/spglib]==])

local root = "/app/software/spglib-python/1.16.0-fosscuda-2020b"

conflict("spglib-python")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-fosscuda-2020b") ) then
    load("SciPy-bundle/2020.11-fosscuda-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSPGLIBMINPYTHON", root)
setenv("EBVERSIONSPGLIBMINPYTHON", "1.16.0")
setenv("EBDEVELSPGLIBMINPYTHON", pathJoin(root, "logs/spglib-python-1.16.0-fosscuda-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.2
