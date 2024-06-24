help([==[

Description
===========
Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.


More information
================
 - Homepage: https://01.org/tbb/
]==])

whatis([==[Description: Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.]==])
whatis([==[Homepage: https://01.org/tbb/]==])
whatis([==[URL: https://01.org/tbb/]==])

local root = "/app/software/tbb/2019_U9-GCCcore-8.3.0"

conflict("tbb")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
setenv("EBROOTTBB", root)
setenv("EBVERSIONTBB", "2019_U9")
setenv("EBDEVELTBB", pathJoin(root, "logs/tbb-2019_U9-GCCcore-8.3.0-easybuild-devel"))

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "build/linux_intel64_gcc_cc8.3.0_libc2.27_kernel4.15.0_release"))
prepend_path("LIBRARY_PATH", pathJoin(root, "build/linux_intel64_gcc_cc8.3.0_libc2.27_kernel4.15.0_release"))
prepend_path("CPATH", pathJoin(root, "include"))
setenv("TBBROOT", "/app/software/tbb/2019_U9-GCCcore-8.3.0/")
-- Built with EasyBuild version 4.1.2
