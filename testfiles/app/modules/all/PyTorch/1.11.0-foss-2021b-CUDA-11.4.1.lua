help([==[

Description
===========
Tensors and Dynamic neural networks in Python with strong GPU acceleration.
PyTorch is a deep learning framework that puts Python first.


More information
================
 - Homepage: https://pytorch.org/
]==])

whatis([==[Description: Tensors and Dynamic neural networks in Python with strong GPU acceleration.
PyTorch is a deep learning framework that puts Python first.]==])
whatis([==[Homepage: https://pytorch.org/]==])
whatis([==[URL: https://pytorch.org/]==])

local root = "/app/software/PyTorch/1.11.0-foss-2021b-CUDA-11.4.1"

conflict("PyTorch")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("Ninja/1.10.2-GCCcore-11.2.0") ) then
    load("Ninja/1.10.2-GCCcore-11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("protobuf/3.17.3-GCCcore-11.2.0") ) then
    load("protobuf/3.17.3-GCCcore-11.2.0")
end

if not ( isloaded("protobuf-python/3.17.3-GCCcore-11.2.0") ) then
    load("protobuf-python/3.17.3-GCCcore-11.2.0")
end

if not ( isloaded("pybind11/2.7.1-GCCcore-11.2.0") ) then
    load("pybind11/2.7.1-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("typing-extensions/3.10.0.2-GCCcore-11.2.0") ) then
    load("typing-extensions/3.10.0.2-GCCcore-11.2.0")
end

if not ( isloaded("PyYAML/5.4.1-GCCcore-11.2.0") ) then
    load("PyYAML/5.4.1-GCCcore-11.2.0")
end

if not ( isloaded("MPFR/4.1.0-GCCcore-11.2.0") ) then
    load("MPFR/4.1.0-GCCcore-11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

if not ( isloaded("numactl/2.0.14-GCCcore-11.2.0") ) then
    load("numactl/2.0.14-GCCcore-11.2.0")
end

if not ( isloaded("FFmpeg/4.3.2-GCCcore-11.2.0") ) then
    load("FFmpeg/4.3.2-GCCcore-11.2.0")
end

if not ( isloaded("Pillow/9.1.0-GCCcore-11.2.0") ) then
    load("Pillow/9.1.0-GCCcore-11.2.0")
end

if not ( isloaded("cuDNN/8.2.2.26-CUDA-11.4.1") ) then
    load("cuDNN/8.2.2.26-CUDA-11.4.1")
end

if not ( isloaded("magma/2.6.2-foss-2021b-CUDA-11.4.1") ) then
    load("magma/2.6.2-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("NCCL/2.10.3-GCCcore-11.2.0-CUDA-11.4.1") ) then
    load("NCCL/2.10.3-GCCcore-11.2.0-CUDA-11.4.1")
end

if not ( isloaded("expecttest/0.1.3-GCCcore-11.2.0") ) then
    load("expecttest/0.1.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root, "lib/python3.9/site-packages/torch"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.9/site-packages/torch/lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTORCH", root)
setenv("EBVERSIONPYTORCH", "1.11.0")
setenv("EBDEVELPYTORCH", pathJoin(root, "logs/PyTorch-1.11.0-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
