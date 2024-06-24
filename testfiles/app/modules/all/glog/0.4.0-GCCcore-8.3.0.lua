help([==[

Description
===========
A C++ implementation of the Google logging module.


More information
================
 - Homepage: https://github.com/google/glog
]==])

whatis([==[Description: A C++ implementation of the Google logging module.]==])
whatis([==[Homepage: https://github.com/google/glog]==])
whatis([==[URL: https://github.com/google/glog]==])

local root = "/app/software/glog/0.4.0-GCCcore-8.3.0"

conflict("glog")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("gflags/2.2.2-GCCcore-8.3.0") ) then
    load("gflags/2.2.2-GCCcore-8.3.0")
end

if not ( isloaded("libunwind/1.3.1-GCCcore-8.3.0") ) then
    load("libunwind/1.3.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGLOG", root)
setenv("EBVERSIONGLOG", "0.4.0")
setenv("EBDEVELGLOG", pathJoin(root, "logs/glog-0.4.0-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
