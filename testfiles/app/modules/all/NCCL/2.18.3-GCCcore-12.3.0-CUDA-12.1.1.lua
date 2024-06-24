help([==[

Description
===========
The NVIDIA Collective Communications Library (NCCL) implements multi-GPU and multi-node collective
communication primitives that are performance optimized for NVIDIA GPUs.


More information
================
 - Homepage: https://developer.nvidia.com/nccl
]==])

whatis([==[Description: The NVIDIA Collective Communications Library (NCCL) implements multi-GPU and multi-node collective
communication primitives that are performance optimized for NVIDIA GPUs.]==])
whatis([==[Homepage: https://developer.nvidia.com/nccl]==])
whatis([==[URL: https://developer.nvidia.com/nccl]==])

local root = "/app/software/NCCL/2.18.3-GCCcore-12.3.0-CUDA-12.1.1"

conflict("NCCL")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
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
setenv("EBROOTNCCL", root)
setenv("EBVERSIONNCCL", "2.18.3")
setenv("EBDEVELNCCL", pathJoin(root, "logs/NCCL-2.18.3-GCCcore-12.3.0-CUDA-12.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
