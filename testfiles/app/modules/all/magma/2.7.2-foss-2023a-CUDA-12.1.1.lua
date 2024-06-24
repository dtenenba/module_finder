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

local root = "/app/software/magma/2.7.2-foss-2023a-CUDA-12.1.1"

conflict("magma")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("CUDA/12.1.1") ) then
    load("CUDA/12.1.1")
end

if not ( isloaded("UCX-CUDA/1.14.1-GCCcore-12.3.0-CUDA-12.1.1") ) then
    load("UCX-CUDA/1.14.1-GCCcore-12.3.0-CUDA-12.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMAGMA", root)
setenv("EBVERSIONMAGMA", "2.7.2")
setenv("EBDEVELMAGMA", pathJoin(root, "logs/magma-2.7.2-foss-2023a-CUDA-12.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
