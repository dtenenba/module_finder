help([==[

Description
===========
FlatBuffers: Memory Efficient Serialization Library


More information
================
 - Homepage: https://github.com/google/flatbuffers/
]==])

whatis([==[Description: FlatBuffers: Memory Efficient Serialization Library]==])
whatis([==[Homepage: https://github.com/google/flatbuffers/]==])
whatis([==[URL: https://github.com/google/flatbuffers/]==])

local root = "/app/software/flatbuffers/1.12.0-GCCcore-10.2.0"

conflict("flatbuffers")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLATBUFFERS", root)
setenv("EBVERSIONFLATBUFFERS", "1.12.0")
setenv("EBDEVELFLATBUFFERS", pathJoin(root, "logs/flatbuffers-1.12.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3