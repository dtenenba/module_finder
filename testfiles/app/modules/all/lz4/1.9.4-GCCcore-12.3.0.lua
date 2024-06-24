help([==[

Description
===========
LZ4 is lossless compression algorithm, providing compression speed at 400 MB/s per core.
 It features an extremely fast decoder, with speed in multiple GB/s per core.


More information
================
 - Homepage: https://lz4.github.io/lz4/
]==])

whatis([==[Description: LZ4 is lossless compression algorithm, providing compression speed at 400 MB/s per core.
 It features an extremely fast decoder, with speed in multiple GB/s per core.]==])
whatis([==[Homepage: https://lz4.github.io/lz4/]==])
whatis([==[URL: https://lz4.github.io/lz4/]==])

local root = "/app/software/lz4/1.9.4-GCCcore-12.3.0"

conflict("lz4")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLZ4", root)
setenv("EBVERSIONLZ4", "1.9.4")
setenv("EBDEVELLZ4", pathJoin(root, "logs/lz4-1.9.4-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
