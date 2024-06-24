help([==[

Description
===========
The MAGMA project aims to develop a dense linear algebra library similar to
 LAPACK but for heterogeneous/hybrid architectures, starting with current Multicore+GPU systems.


More information
================
 - Homepage: https://icl.cs.utk.edu/magma/
]==])

whatis([==[Description: The MAGMA project aims to develop a dense linear algebra library similar to
 LAPACK but for heterogeneous/hybrid architectures, starting with current Multicore+GPU systems.]==])
whatis([==[Homepage: https://icl.cs.utk.edu/magma/]==])
whatis([==[URL: https://icl.cs.utk.edu/magma/]==])

local root = "/app/software/magma/2.5.4-fosscuda-2020b"

conflict("magma")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMAGMA", root)
setenv("EBVERSIONMAGMA", "2.5.4")
setenv("EBDEVELMAGMA", pathJoin(root, "logs/magma-2.5.4-fosscuda-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
