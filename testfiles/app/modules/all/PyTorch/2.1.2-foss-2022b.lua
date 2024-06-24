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

local root = "/app/software/PyTorch/2.1.2-foss-2022b"

conflict("PyTorch")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Ninja/1.11.1-GCCcore-12.2.0") ) then
    load("Ninja/1.11.1-GCCcore-12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("protobuf/23.0-GCCcore-12.2.0") ) then
    load("protobuf/23.0-GCCcore-12.2.0")
end

if not ( isloaded("protobuf-python/4.23.0-GCCcore-12.2.0") ) then
    load("protobuf-python/4.23.0-GCCcore-12.2.0")
end

if not ( isloaded("pybind11/2.10.3-GCCcore-12.2.0") ) then
    load("pybind11/2.10.3-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.2.0") ) then
    load("PyYAML/6.0-GCCcore-12.2.0")
end

if not ( isloaded("MPFR/4.2.0-GCCcore-12.2.0") ) then
    load("MPFR/4.2.0-GCCcore-12.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-12.2.0") ) then
    load("GMP/6.2.1-GCCcore-12.2.0")
end

if not ( isloaded("numactl/2.0.16-GCCcore-12.2.0") ) then
    load("numactl/2.0.16-GCCcore-12.2.0")
end

if not ( isloaded("FFmpeg/5.1.2-GCCcore-12.2.0") ) then
    load("FFmpeg/5.1.2-GCCcore-12.2.0")
end

if not ( isloaded("Pillow/9.4.0-GCCcore-12.2.0") ) then
    load("Pillow/9.4.0-GCCcore-12.2.0")
end

if not ( isloaded("expecttest/0.1.3-GCCcore-12.2.0") ) then
    load("expecttest/0.1.3-GCCcore-12.2.0")
end

if not ( isloaded("networkx/3.0-gfbf-2022b") ) then
    load("networkx/3.0-gfbf-2022b")
end

if not ( isloaded("sympy/1.12-gfbf-2022b") ) then
    load("sympy/1.12-gfbf-2022b")
end

if not ( isloaded("Z3/4.12.2-GCCcore-12.2.0-Python-3.10.8") ) then
    load("Z3/4.12.2-GCCcore-12.2.0-Python-3.10.8")
end

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root, "lib/python3.10/site-packages/torch"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.10/site-packages/torch/lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTORCH", root)
setenv("EBVERSIONPYTORCH", "2.1.2")
setenv("EBDEVELPYTORCH", pathJoin(root, "logs/PyTorch-2.1.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.0
