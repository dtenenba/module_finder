help([==[

Description
===========
Datasets, Transforms and Models specific to Computer Vision


More information
================
 - Homepage: https://github.com/pytorch/vision
]==])

whatis([==[Description:  Datasets, Transforms and Models specific to Computer Vision]==])
whatis([==[Homepage: https://github.com/pytorch/vision]==])
whatis([==[URL: https://github.com/pytorch/vision]==])

local root = "/app/software/torchvision/0.13.0-foss-2021b-CUDA-11.4.1"

conflict("torchvision")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Pillow-SIMD/9.1.0-GCCcore-11.2.0") ) then
    load("Pillow-SIMD/9.1.0-GCCcore-11.2.0")
end

if not ( isloaded("PyTorch/1.11.0-foss-2021b-CUDA-11.4.1") ) then
    load("PyTorch/1.11.0-foss-2021b-CUDA-11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTORCHVISION", root)
setenv("EBVERSIONTORCHVISION", "0.13.0")
setenv("EBDEVELTORCHVISION", pathJoin(root, "logs/torchvision-0.13.0-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
