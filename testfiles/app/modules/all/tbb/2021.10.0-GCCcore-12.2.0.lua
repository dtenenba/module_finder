help([==[

Description
===========
Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.


More information
================
 - Homepage: https://github.com/oneapi-src/oneTBB
]==])

whatis([==[Description: Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.]==])
whatis([==[Homepage: https://github.com/oneapi-src/oneTBB]==])
whatis([==[URL: https://github.com/oneapi-src/oneTBB]==])

local root = "/app/software/tbb/2021.10.0-GCCcore-12.2.0"

conflict("tbb")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("hwloc/2.8.0-GCCcore-12.2.0") ) then
    load("hwloc/2.8.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTBB", root)
setenv("EBVERSIONTBB", "2021.10.0")
setenv("EBDEVELTBB", pathJoin(root, "logs/tbb-2021.10.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
