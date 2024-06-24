help([==[

Description
===========
A modern, C++-native, header-only,
 test framework for unit-tests, TDD and BDD
 - using C++11, C++14, C++17 and later
   (or C++03 on the Catch1.x branch)


More information
================
 - Homepage: https://github.com/catchorg/Catch2
]==])

whatis([==[Description: A modern, C++-native, header-only,
 test framework for unit-tests, TDD and BDD
 - using C++11, C++14, C++17 and later
   (or C++03 on the Catch1.x branch)
]==])
whatis([==[Homepage: https://github.com/catchorg/Catch2]==])
whatis([==[URL: https://github.com/catchorg/Catch2]==])

local root = "/app/software/Catch2/2.11.0"

conflict("Catch2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCATCH2", root)
setenv("EBVERSIONCATCH2", "2.11.0")
setenv("EBDEVELCATCH2", pathJoin(root, "logs/Catch2-2.11.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
