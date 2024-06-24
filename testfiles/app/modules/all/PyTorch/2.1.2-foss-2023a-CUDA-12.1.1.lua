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

local root = "/app/software/PyTorch/2.1.2-foss-2023a-CUDA-12.1.1"

conflict("PyTorch")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("CUDA/12.1.1") ) then
    load("CUDA/12.1.1")
end

if not ( isloaded("cuDNN/8.9.2.26-CUDA-12.1.1") ) then
    load("cuDNN/8.9.2.26-CUDA-12.1.1")
end

if not ( isloaded("magma/2.7.2-foss-2023a-CUDA-12.1.1") ) then
    load("magma/2.7.2-foss-2023a-CUDA-12.1.1")
end

if not ( isloaded("NCCL/2.18.3-GCCcore-12.3.0-CUDA-12.1.1") ) then
    load("NCCL/2.18.3-GCCcore-12.3.0-CUDA-12.1.1")
end

if not ( isloaded("Ninja/1.11.1-GCCcore-12.3.0") ) then
    load("Ninja/1.11.1-GCCcore-12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

if not ( isloaded("protobuf/24.0-GCCcore-12.3.0") ) then
    load("protobuf/24.0-GCCcore-12.3.0")
end

if not ( isloaded("protobuf-python/4.24.0-GCCcore-12.3.0") ) then
    load("protobuf-python/4.24.0-GCCcore-12.3.0")
end

if not ( isloaded("pybind11/2.11.1-GCCcore-12.3.0") ) then
    load("pybind11/2.11.1-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.3.0") ) then
    load("PyYAML/6.0-GCCcore-12.3.0")
end

if not ( isloaded("MPFR/4.2.0-GCCcore-12.3.0") ) then
    load("MPFR/4.2.0-GCCcore-12.3.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-12.3.0") ) then
    load("GMP/6.2.1-GCCcore-12.3.0")
end

if not ( isloaded("numactl/2.0.16-GCCcore-12.3.0") ) then
    load("numactl/2.0.16-GCCcore-12.3.0")
end

if not ( isloaded("FFmpeg/6.0-GCCcore-12.3.0") ) then
    load("FFmpeg/6.0-GCCcore-12.3.0")
end

if not ( isloaded("Pillow/10.0.0-GCCcore-12.3.0") ) then
    load("Pillow/10.0.0-GCCcore-12.3.0")
end

if not ( isloaded("expecttest/0.1.5-GCCcore-12.3.0") ) then
    load("expecttest/0.1.5-GCCcore-12.3.0")
end

if not ( isloaded("networkx/3.1-gfbf-2023a") ) then
    load("networkx/3.1-gfbf-2023a")
end

if not ( isloaded("sympy/1.12-gfbf-2023a") ) then
    load("sympy/1.12-gfbf-2023a")
end

if not ( isloaded("Z3/4.12.2-GCCcore-12.3.0-Python-3.11.3") ) then
    load("Z3/4.12.2-GCCcore-12.3.0-Python-3.11.3")
end

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root, "lib/python3.11/site-packages/torch"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.11/site-packages/torch/lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTORCH", root)
setenv("EBVERSIONPYTORCH", "2.1.2")
setenv("EBDEVELPYTORCH", pathJoin(root, "logs/PyTorch-2.1.2-foss-2023a-CUDA-12.1.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
