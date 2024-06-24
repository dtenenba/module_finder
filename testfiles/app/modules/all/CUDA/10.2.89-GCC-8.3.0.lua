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

local root = "/app/software/CUDA/10.2.89-GCC-8.3.0"

conflict("CUDA")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPATH", pathJoin(root, "extras/CUPTI/include"))
prepend_path("CPATH", pathJoin(root, "nvvm/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "extras/CUPTI/lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "nvvm/lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64/stubs"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "nvvm/bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCUDA", root)
setenv("EBVERSIONCUDA", "10.2.89")
setenv("EBDEVELCUDA", pathJoin(root, "logs/CUDA-10.2.89-GCC-8.3.0-easybuild-devel"))

prepend_path("PATH", root)
setenv("CUDA_HOME", "/app/software/CUDA/10.2.89-GCC-8.3.0")
setenv("CUDA_ROOT", "/app/software/CUDA/10.2.89-GCC-8.3.0")
setenv("CUDA_PATH", "/app/software/CUDA/10.2.89-GCC-8.3.0")
-- Built with EasyBuild version 4.2.2
