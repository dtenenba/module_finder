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

local root = "/app/software/flatbuffers/23.5.26-GCCcore-12.3.0"

conflict("flatbuffers")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFLATBUFFERS", root)
setenv("EBVERSIONFLATBUFFERS", "23.5.26")
setenv("EBDEVELFLATBUFFERS", pathJoin(root, "logs/flatbuffers-23.5.26-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
