help([==[

Description
===========
This is protobuf-c, a C implementation of the Google Protocol Buffers data serialization format


More information
================
 - Homepage: https://github.com/protobuf-c/protobuf-c
]==])

whatis([==[Description: This is protobuf-c, a C implementation of the Google Protocol Buffers data serialization format]==])
whatis([==[Homepage: https://github.com/protobuf-c/protobuf-c]==])
whatis([==[URL: https://github.com/protobuf-c/protobuf-c]==])

local root = "/app/software/protobuf-c/1.3.3-GCCcore-8.3.0"

conflict("protobuf-c")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPROTOBUFMINC", root)
setenv("EBVERSIONPROTOBUFMINC", "1.3.3")
setenv("EBDEVELPROTOBUFMINC", pathJoin(root, "logs/protobuf-c-1.3.3-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
