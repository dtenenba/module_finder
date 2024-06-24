help([==[

Description
===========
Abseil is an open-source collection of C++ library code designed to augment the
C++ standard library. The Abseil library code is collected from Google's own
C++ code base, has been extensively tested and used in production, and is the
same code we depend on in our daily coding lives.


More information
================
 - Homepage: https://abseil.io/
]==])

whatis([==[Description: Abseil is an open-source collection of C++ library code designed to augment the
C++ standard library. The Abseil library code is collected from Google's own
C++ code base, has been extensively tested and used in production, and is the
same code we depend on in our daily coding lives.]==])
whatis([==[Homepage: https://abseil.io/]==])
whatis([==[URL: https://abseil.io/]==])

local root = "/app/software/Abseil/20230125.3-GCCcore-12.3.0"

conflict("Abseil")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTABSEIL", root)
setenv("EBVERSIONABSEIL", "20230125.3")
setenv("EBDEVELABSEIL", pathJoin(root, "logs/Abseil-20230125.3-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
