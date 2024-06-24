help([==[

Description
===========
PyTorch Geometric (PyG) is a geometric deep learning extension library for PyTorch.


More information
================
 - Homepage: https://github.com/rusty1s/pytorch_geometric


Included extensions
===================
antlr4-python3-runtime-4.9.3, calmsize-0.1.3, googledrivedownloader-0.4,
importlib_resources-5.4.0, plyfile-0.7.3, pytorch_memlab-0.2.4,
torch_cluster-1.5.8, torch_geometric-2.0.3, torch_scatter-2.0.5,
torch_sparse-0.6.12, torch_spline_conv-1.2.1
]==])

whatis([==[Description: PyTorch Geometric (PyG) is a geometric deep learning extension library for PyTorch.]==])
whatis([==[Homepage: https://github.com/rusty1s/pytorch_geometric]==])
whatis([==[URL: https://github.com/rusty1s/pytorch_geometric]==])
whatis([==[Extensions: antlr4-python3-runtime-4.9.3, calmsize-0.1.3, googledrivedownloader-0.4, importlib_resources-5.4.0, plyfile-0.7.3, pytorch_memlab-0.2.4, torch_cluster-1.5.8, torch_geometric-2.0.3, torch_scatter-2.0.5, torch_sparse-0.6.12, torch_spline_conv-1.2.1]==])

local root = "/app/software/PyTorch-Geometric/2.0.3-fosscuda-2020b"

conflict("PyTorch-Geometric")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-fosscuda-2020b") ) then
    load("matplotlib/3.3.3-fosscuda-2020b")
end

if not ( isloaded("PyTorch/1.10.0-fosscuda-2020b") ) then
    load("PyTorch/1.10.0-fosscuda-2020b")
end

if not ( isloaded("scikit-learn/0.23.2-fosscuda-2020b") ) then
    load("scikit-learn/0.23.2-fosscuda-2020b")
end

if not ( isloaded("scikit-image/0.18.1-fosscuda-2020b") ) then
    load("scikit-image/0.18.1-fosscuda-2020b")
end

if not ( isloaded("numba/0.53.1-fosscuda-2020b") ) then
    load("numba/0.53.1-fosscuda-2020b")
end

if not ( isloaded("h5py/3.1.0-fosscuda-2020b") ) then
    load("h5py/3.1.0-fosscuda-2020b")
end

if not ( isloaded("tqdm/4.56.2-GCCcore-10.2.0") ) then
    load("tqdm/4.56.2-GCCcore-10.2.0")
end

if not ( isloaded("RDFlib/5.0.0-GCCcore-10.2.0") ) then
    load("RDFlib/5.0.0-GCCcore-10.2.0")
end

if not ( isloaded("ASE/3.20.1-fosscuda-2020b") ) then
    load("ASE/3.20.1-fosscuda-2020b")
end

if not ( isloaded("YACS/0.1.8-GCCcore-10.2.0") ) then
    load("YACS/0.1.8-GCCcore-10.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTORCHMINGEOMETRIC", root)
setenv("EBVERSIONPYTORCHMINGEOMETRIC", "2.0.3")
setenv("EBDEVELPYTORCHMINGEOMETRIC", pathJoin(root, "logs/PyTorch-Geometric-2.0.3-fosscuda-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.2
setenv("EBEXTSLISTPYTORCHMINGEOMETRIC", "googledrivedownloader-0.4,plyfile-0.7.3,torch_scatter-2.0.5,torch_sparse-0.6.12,torch_cluster-1.5.8,torch_spline_conv-1.2.1,calmsize-0.1.3,pytorch_memlab-0.2.4,antlr4-python3-runtime-4.9.3,importlib_resources-5.4.0,torch_geometric-2.0.3")
