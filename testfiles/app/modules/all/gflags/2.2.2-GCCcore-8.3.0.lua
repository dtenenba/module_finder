help([==[

Description
===========
The gflags package contains a C++ library that implements commandline flags
processing.  It includes built-in support for standard types such as string
and the ability to define flags in the source file in which they are used.


More information
================
 - Homepage: https://github.com/gflags/gflags
]==])

whatis([==[Description: 
The gflags package contains a C++ library that implements commandline flags
processing.  It includes built-in support for standard types such as string
and the ability to define flags in the source file in which they are used.
]==])
whatis([==[Homepage: https://github.com/gflags/gflags]==])
whatis([==[URL: https://github.com/gflags/gflags]==])

local root = "/app/software/gflags/2.2.2-GCCcore-8.3.0"

conflict("gflags")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGFLAGS", root)
setenv("EBVERSIONGFLAGS", "2.2.2")
setenv("EBDEVELGFLAGS", pathJoin(root, "logs/gflags-2.2.2-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
