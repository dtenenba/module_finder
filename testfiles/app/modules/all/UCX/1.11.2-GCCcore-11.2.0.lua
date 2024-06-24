help([==[

Description
===========
Unified Communication X
An open-source production grade communication framework for data centric
and high-performance applications


More information
================
 - Homepage: https://www.openucx.org/
]==])

whatis([==[Description: Unified Communication X
An open-source production grade communication framework for data centric
and high-performance applications
]==])
whatis([==[Homepage: https://www.openucx.org/]==])
whatis([==[URL: https://www.openucx.org/]==])

local root = "/app/software/UCX/1.11.2-GCCcore-11.2.0"

conflict("UCX")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("numactl/2.0.14-GCCcore-11.2.0") ) then
    load("numactl/2.0.14-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTUCX", root)
setenv("EBVERSIONUCX", "1.11.2")
setenv("EBDEVELUCX", pathJoin(root, "logs/UCX-1.11.2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
