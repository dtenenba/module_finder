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

local root = "/app/software/CUDA/11.3.1"

conflict("CUDA")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPATH", pathJoin(root, "extras/CUPTI/include"))
prepend_path("CPATH", pathJoin(root, "nvvm/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "extras/CUPTI/lib64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "nvvm/lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "stubs/lib64"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "nvvm/bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCUDA", root)
setenv("EBVERSIONCUDA", "11.3.1")
setenv("EBDEVELCUDA", pathJoin(root, "logs/CUDA-11.3.1-easybuild-devel"))

setenv("CUDA_HOME", "/app/software/CUDA/11.3.1")
setenv("CUDA_ROOT", "/app/software/CUDA/11.3.1")
setenv("CUDA_PATH", "/app/software/CUDA/11.3.1")
-- Built with EasyBuild version 4.6.1