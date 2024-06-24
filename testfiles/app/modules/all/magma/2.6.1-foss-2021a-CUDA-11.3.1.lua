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

local root = "/app/software/magma/2.6.1-foss-2021a-CUDA-11.3.1"

conflict("magma")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("CUDA/11.3.1") ) then
    load("CUDA/11.3.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMAGMA", root)
setenv("EBVERSIONMAGMA", "2.6.1")
setenv("EBDEVELMAGMA", pathJoin(root, "logs/magma-2.6.1-foss-2021a-CUDA-11.3.1-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
