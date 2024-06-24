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

local root = "/app/software/magma/2.7.1-foss-2022b-CUDA-12.0.0"

conflict("magma")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("CUDA/12.0.0") ) then
    load("CUDA/12.0.0")
end

if not ( isloaded("UCX-CUDA/1.13.1-GCCcore-12.2.0-CUDA-12.0.0") ) then
    load("UCX-CUDA/1.13.1-GCCcore-12.2.0-CUDA-12.0.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMAGMA", root)
setenv("EBVERSIONMAGMA", "2.7.1")
setenv("EBDEVELMAGMA", pathJoin(root, "logs/magma-2.7.1-foss-2022b-CUDA-12.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
