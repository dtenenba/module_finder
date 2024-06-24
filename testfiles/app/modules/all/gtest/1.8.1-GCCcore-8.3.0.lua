help([==[

Description
===========
Google's framework for writing C++ tests on a variety of platforms


More information
================
 - Homepage: https://github.com/google/googletest
]==])

whatis([==[Description: Google's framework for writing C++ tests on a variety of platforms]==])
whatis([==[Homepage: https://github.com/google/googletest]==])
whatis([==[URL: https://github.com/google/googletest]==])

local root = "/app/software/gtest/1.8.1-GCCcore-8.3.0"

conflict("gtest")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGTEST", root)
setenv("EBVERSIONGTEST", "1.8.1")
setenv("EBDEVELGTEST", pathJoin(root, "logs/gtest-1.8.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
