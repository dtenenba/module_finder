help([==[

Description
===========
The NVIDIA CUDA Deep Neural Network library (cuDNN) is
a GPU-accelerated library of primitives for deep neural networks.


More information
================
 - Homepage: https://developer.nvidia.com/cudnn
]==])

whatis([==[Description: The NVIDIA CUDA Deep Neural Network library (cuDNN) is
a GPU-accelerated library of primitives for deep neural networks.]==])
whatis([==[Homepage: https://developer.nvidia.com/cudnn]==])
whatis([==[URL: https://developer.nvidia.com/cudnn]==])

local root = "/app/software/cuDNN/8.2.2.26-CUDA-11.4.1"

conflict("cuDNN")

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTCUDNN", root)
setenv("EBVERSIONCUDNN", "8.2.2.26")
setenv("EBDEVELCUDNN", pathJoin(root, "logs/cuDNN-8.2.2.26-CUDA-11.4.1-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
