help([==[

Description
===========
Google Protocol Buffers


More information
================
 - Homepage: https://github.com/google/protobuf/
]==])

whatis([==[Description: Google Protocol Buffers]==])
whatis([==[Homepage: https://github.com/google/protobuf/]==])
whatis([==[URL: https://github.com/google/protobuf/]==])

local root = "/app/software/protobuf/3.17.3-GCCcore-10.3.0"

conflict("protobuf")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPROTOBUF", root)
setenv("EBVERSIONPROTOBUF", "3.17.3")
setenv("EBDEVELPROTOBUF", pathJoin(root, "logs/protobuf-3.17.3-GCCcore-10.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
