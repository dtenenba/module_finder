help([==[

Description
===========
Python bindings to spoa.


More information
================
 - Homepage: https://github.com/nanoporetech/pyspoa
]==])

whatis([==[Description: Python bindings to spoa.]==])
whatis([==[Homepage: https://github.com/nanoporetech/pyspoa]==])
whatis([==[URL: https://github.com/nanoporetech/pyspoa]==])

local root = "/app/software/pyspoa/0.0.4-GCC-8.3.0-Python-3.7.4"

conflict("pyspoa")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("pybind11/2.4.3-GCCcore-8.3.0-Python-3.7.4") ) then
    load("pybind11/2.4.3-GCCcore-8.3.0-Python-3.7.4")
end

if not ( isloaded("spoa/4.0.0-GCC-8.3.0") ) then
    load("spoa/4.0.0-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYSPOA", root)
setenv("EBVERSIONPYSPOA", "0.0.4")
setenv("EBDEVELPYSPOA", pathJoin(root, "logs/pyspoa-0.0.4-GCC-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.2
