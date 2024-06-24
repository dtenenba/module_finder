help([==[

Description
===========
BLIS is a portable software framework for instantiating high-performance
BLAS-like dense linear algebra libraries.


More information
================
 - Homepage: https://github.com/flame/blis/
]==])

whatis([==[Description: BLIS is a portable software framework for instantiating high-performance
BLAS-like dense linear algebra libraries.]==])
whatis([==[Homepage: https://github.com/flame/blis/]==])
whatis([==[URL: https://github.com/flame/blis/]==])

local root = "/app/software/BLIS/0.9.0-GCC-13.2.0"

conflict("BLIS")

if not ( isloaded("GCC/13.2.0") ) then
    load("GCC/13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBLIS", root)
setenv("EBVERSIONBLIS", "0.9.0")
setenv("EBDEVELBLIS", pathJoin(root, "logs/BLIS-0.9.0-GCC-13.2.0-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/blis"))
-- Built with EasyBuild version 4.9.0
