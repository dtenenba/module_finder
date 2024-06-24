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

local root = "/app/software/NCCL/2.12.12-GCCcore-11.3.0-CUDA-11.7.0"

conflict("NCCL")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("UCX-CUDA/1.12.1-GCCcore-11.3.0-CUDA-11.7.0") ) then
    load("UCX-CUDA/1.12.1-GCCcore-11.3.0-CUDA-11.7.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNCCL", root)
setenv("EBVERSIONNCCL", "2.12.12")
setenv("EBDEVELNCCL", pathJoin(root, "logs/NCCL-2.12.12-GCCcore-11.3.0-CUDA-11.7.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
