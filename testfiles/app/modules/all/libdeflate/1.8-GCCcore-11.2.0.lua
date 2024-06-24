help([==[

Description
===========
Heavily optimized library for DEFLATE/zlib/gzip compression and decompression.


More information
================
 - Homepage: https://github.com/ebiggers/libdeflate
]==])

whatis([==[Description: Heavily optimized library for DEFLATE/zlib/gzip compression and decompression.]==])
whatis([==[Homepage: https://github.com/ebiggers/libdeflate]==])
whatis([==[URL: https://github.com/ebiggers/libdeflate]==])

local root = "/app/software/libdeflate/1.8-GCCcore-11.2.0"

conflict("libdeflate")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBDEFLATE", root)
setenv("EBVERSIONLIBDEFLATE", "1.8")
setenv("EBDEVELLIBDEFLATE", pathJoin(root, "logs/libdeflate-1.8-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
