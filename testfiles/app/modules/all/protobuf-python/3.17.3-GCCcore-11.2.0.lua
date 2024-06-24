help([==[

Description
===========
Python Protocol Buffers runtime library.


More information
================
 - Homepage: https://github.com/google/protobuf/
]==])

whatis([==[Description: Python Protocol Buffers runtime library.]==])
whatis([==[Homepage: https://github.com/google/protobuf/]==])
whatis([==[URL: https://github.com/google/protobuf/]==])

local root = "/app/software/protobuf-python/3.17.3-GCCcore-11.2.0"

conflict("protobuf-python")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("protobuf/3.17.3-GCCcore-11.2.0") ) then
    load("protobuf/3.17.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPROTOBUFMINPYTHON", root)
setenv("EBVERSIONPROTOBUFMINPYTHON", "3.17.3")
setenv("EBDEVELPROTOBUFMINPYTHON", pathJoin(root, "logs/protobuf-python-3.17.3-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
