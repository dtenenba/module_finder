help([==[

Description
===========
Imath is a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics


More information
================
 - Homepage: https://imath.readthedocs.io/en/latest/
]==])

whatis([==[Description: 
Imath is a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics
]==])
whatis([==[Homepage: https://imath.readthedocs.io/en/latest/]==])
whatis([==[URL: https://imath.readthedocs.io/en/latest/]==])

local root = "/app/software/Imath/3.1.9-GCCcore-13.2.0"

conflict("Imath")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTIMATH", root)
setenv("EBVERSIONIMATH", "3.1.9")
setenv("EBDEVELIMATH", pathJoin(root, "logs/Imath-3.1.9-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
