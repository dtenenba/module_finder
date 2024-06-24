help([==[

Description
===========
pybind11 is a lightweight header-only library that exposes C++ types in Python and vice versa,
 mainly to create Python bindings of existing C++ code.


More information
================
 - Homepage: https://pybind11.readthedocs.io
]==])

whatis([==[Description: pybind11 is a lightweight header-only library that exposes C++ types in Python and vice versa,
 mainly to create Python bindings of existing C++ code.]==])
whatis([==[Homepage: https://pybind11.readthedocs.io]==])
whatis([==[URL: https://pybind11.readthedocs.io]==])

local root = "/app/software/pybind11/2.4.3-GCCcore-8.3.0-Python-3.7.4"

conflict("pybind11")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYBIND11", root)
setenv("EBVERSIONPYBIND11", "2.4.3")
setenv("EBDEVELPYBIND11", pathJoin(root, "logs/pybind11-2.4.3-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.2
