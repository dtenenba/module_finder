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

local root = "/app/software/PyTorch/1.7.1-foss-2020b"

conflict("PyTorch")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Ninja/1.10.1-GCCcore-10.2.0") ) then
    load("Ninja/1.10.1-GCCcore-10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("protobuf/3.14.0-GCCcore-10.2.0") ) then
    load("protobuf/3.14.0-GCCcore-10.2.0")
end

if not ( isloaded("protobuf-python/3.14.0-GCCcore-10.2.0") ) then
    load("protobuf-python/3.14.0-GCCcore-10.2.0")
end

if not ( isloaded("pybind11/2.6.0-GCCcore-10.2.0") ) then
    load("pybind11/2.6.0-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("typing-extensions/3.7.4.3-GCCcore-10.2.0") ) then
    load("typing-extensions/3.7.4.3-GCCcore-10.2.0")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("MPFR/4.1.0-GCCcore-10.2.0") ) then
    load("MPFR/4.1.0-GCCcore-10.2.0")
end

if not ( isloaded("GMP/6.2.0-GCCcore-10.2.0") ) then
    load("GMP/6.2.0-GCCcore-10.2.0")
end

if not ( isloaded("numactl/2.0.13-GCCcore-10.2.0") ) then
    load("numactl/2.0.13-GCCcore-10.2.0")
end

if not ( isloaded("FFmpeg/4.3.1-GCCcore-10.2.0") ) then
    load("FFmpeg/4.3.1-GCCcore-10.2.0")
end

if not ( isloaded("Pillow/8.0.1-GCCcore-10.2.0") ) then
    load("Pillow/8.0.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root, "lib/python3.8/site-packages/torch"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/torch/lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTORCH", root)
setenv("EBVERSIONPYTORCH", "1.7.1")
setenv("EBDEVELPYTORCH", pathJoin(root, "logs/PyTorch-1.7.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
