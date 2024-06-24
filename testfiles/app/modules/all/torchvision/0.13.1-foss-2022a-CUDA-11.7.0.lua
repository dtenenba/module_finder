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

local root = "/app/software/torchvision/0.13.1-foss-2022a-CUDA-11.7.0"

conflict("torchvision")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("Pillow-SIMD/9.2.0-GCCcore-11.3.0") ) then
    load("Pillow-SIMD/9.2.0-GCCcore-11.3.0")
end

if not ( isloaded("PyTorch/1.12.1-foss-2022a-CUDA-11.7.0") ) then
    load("PyTorch/1.12.1-foss-2022a-CUDA-11.7.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTORCHVISION", root)
setenv("EBVERSIONTORCHVISION", "0.13.1")
setenv("EBDEVELTORCHVISION", pathJoin(root, "logs/torchvision-0.13.1-foss-2022a-CUDA-11.7.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
