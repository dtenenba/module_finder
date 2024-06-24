help([==[

Description
===========
Python bindings for ZeroMQ


More information
================
 - Homepage: https://www.zeromq.org/bindings:python
]==])

whatis([==[Description: Python bindings for ZeroMQ]==])
whatis([==[Homepage: https://www.zeromq.org/bindings:python]==])
whatis([==[URL: https://www.zeromq.org/bindings:python]==])

local root = "/app/software/PyZMQ/25.1.1-GCCcore-12.3.0"

conflict("PyZMQ")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

if not ( isloaded("ZeroMQ/4.3.4-GCCcore-12.3.0") ) then
    load("ZeroMQ/4.3.4-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYZMQ", root)
setenv("EBVERSIONPYZMQ", "25.1.1")
setenv("EBDEVELPYZMQ", pathJoin(root, "logs/PyZMQ-25.1.1-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
