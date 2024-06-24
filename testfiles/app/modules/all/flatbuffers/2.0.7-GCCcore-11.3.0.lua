help([==[

Description
===========
FlatBuffers: Memory Efficient Serialization Library

Includes the Flatbuffers compiler, C/C++ bindings and Python runtime library.


More information
================
 - Homepage: https://github.com/google/flatbuffers/


Included extensions
===================
flatbuffers-2.0.7
]==])

whatis([==[Description: FlatBuffers: Memory Efficient Serialization Library

Includes the Flatbuffers compiler, C/C++ bindings and Python runtime library.
]==])
whatis([==[Homepage: https://github.com/google/flatbuffers/]==])
whatis([==[URL: https://github.com/google/flatbuffers/]==])
whatis([==[Extensions: flatbuffers-2.0.7]==])

local root = "/app/software/flatbuffers/2.0.7-GCCcore-11.3.0"

conflict("flatbuffers")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFLATBUFFERS", root)
setenv("EBVERSIONFLATBUFFERS", "2.0.7")
setenv("EBDEVELFLATBUFFERS", pathJoin(root, "logs/flatbuffers-2.0.7-GCCcore-11.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTFLATBUFFERS", "flatbuffers-2.0.7")
