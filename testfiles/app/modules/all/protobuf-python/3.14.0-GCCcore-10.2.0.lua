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

local root = "/app/software/protobuf-python/3.14.0-GCCcore-10.2.0"

conflict("protobuf-python")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("protobuf/3.14.0-GCCcore-10.2.0") ) then
    load("protobuf/3.14.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPROTOBUFMINPYTHON", root)
setenv("EBVERSIONPROTOBUFMINPYTHON", "3.14.0")
setenv("EBDEVELPROTOBUFMINPYTHON", pathJoin(root, "logs/protobuf-python-3.14.0-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
