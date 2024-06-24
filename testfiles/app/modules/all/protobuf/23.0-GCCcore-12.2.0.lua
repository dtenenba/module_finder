help([==[

Description
===========
Protocol Buffers (a.k.a., protobuf) are Google's 
language-neutral, platform-neutral, extensible mechanism for 
serializing structured data.


More information
================
 - Homepage: https://github.com/protocolbuffers/protobuf
]==])

whatis([==[Description: Protocol Buffers (a.k.a., protobuf) are Google's 
language-neutral, platform-neutral, extensible mechanism for 
serializing structured data.]==])
whatis([==[Homepage: https://github.com/protocolbuffers/protobuf]==])
whatis([==[URL: https://github.com/protocolbuffers/protobuf]==])

local root = "/app/software/protobuf/23.0-GCCcore-12.2.0"

conflict("protobuf")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Abseil/20230125.2-GCCcore-12.2.0") ) then
    load("Abseil/20230125.2-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPROTOBUF", root)
setenv("EBVERSIONPROTOBUF", "23.0")
setenv("EBDEVELPROTOBUF", pathJoin(root, "logs/protobuf-23.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
