help([==[

Description
===========
Highway is a C++ library for SIMD (Single Instruction, Multiple Data), i.e. applying the same
operation to 'lanes'.


More information
================
 - Homepage: https://github.com/google/highway
]==])

whatis([==[Description: Highway is a C++ library for SIMD (Single Instruction, Multiple Data), i.e. applying the same
operation to 'lanes'.]==])
whatis([==[Homepage: https://github.com/google/highway]==])
whatis([==[URL: https://github.com/google/highway]==])

local root = "/app/software/Highway/1.0.3-GCCcore-12.2.0"

conflict("Highway")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTHIGHWAY", root)
setenv("EBVERSIONHIGHWAY", "1.0.3")
setenv("EBDEVELHIGHWAY", pathJoin(root, "logs/Highway-1.0.3-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
