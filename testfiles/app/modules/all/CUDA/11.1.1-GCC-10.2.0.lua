help([==[

Description
===========
CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.


More information
================
 - Homepage: https://developer.nvidia.com/cuda-toolkit
]==])

whatis([==[Description: CUDA (formerly Compute Unified Device Architecture) is a parallel
 computing platform and programming model created by NVIDIA and implemented by the
 graphics processing units (GPUs) that they produce. CUDA gives developers access
 to the virtual instruction set and memory of the parallel computational elements in CUDA GPUs.]==])
whatis([==[Homepage: https://developer.nvidia.com/cuda-toolkit]==])
whatis([==[URL: https://developer.nvidia.com/cuda-toolkit]==])

local root = "/app/software/CUDA/11.1.1-GCC-10.2.0"

conflict("CUDA")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("CUDAcore/11.1.1") ) then
    load("CUDAcore/11.1.1")
end

setenv("EBROOTCUDA", "/app/software/CUDAcore/11.1.1")
setenv("EBVERSIONCUDA", "11.1.1")
setenv("EBDEVELCUDA", pathJoin(root, "logs/CUDA-11.1.1-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
