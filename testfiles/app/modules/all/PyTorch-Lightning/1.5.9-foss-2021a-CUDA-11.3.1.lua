help([==[

Description
===========
PyTorch Lightning is the lightweight PyTorch wrapper for ML researchers.


More information
================
 - Homepage: https://pytorchlightning.ai


Included extensions
===================
fsspec-2022.1.0, pyDeprecate-0.3.2, pytorch-lightning-1.5.9,
torchmetrics-0.7.0
]==])

whatis([==[Description: PyTorch Lightning is the lightweight PyTorch wrapper for ML researchers.]==])
whatis([==[Homepage: https://pytorchlightning.ai]==])
whatis([==[URL: https://pytorchlightning.ai]==])
whatis([==[Extensions: fsspec-2022.1.0, pyDeprecate-0.3.2, pytorch-lightning-1.5.9, torchmetrics-0.7.0]==])

local root = "/app/software/PyTorch-Lightning/1.5.9-foss-2021a-CUDA-11.3.1"

conflict("PyTorch-Lightning")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("CUDA/11.3.1") ) then
    load("CUDA/11.3.1")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("PyTorch/1.10.0-foss-2021a-CUDA-11.3.1") ) then
    load("PyTorch/1.10.0-foss-2021a-CUDA-11.3.1")
end

if not ( isloaded("tqdm/4.61.2-GCCcore-10.3.0") ) then
    load("tqdm/4.61.2-GCCcore-10.3.0")
end

if not ( isloaded("tensorboard/2.8.0-foss-2021a") ) then
    load("tensorboard/2.8.0-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPYTORCHMINLIGHTNING", root)
setenv("EBVERSIONPYTORCHMINLIGHTNING", "1.5.9")
setenv("EBDEVELPYTORCHMINLIGHTNING", pathJoin(root, "logs/PyTorch-Lightning-1.5.9-foss-2021a-CUDA-11.3.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTPYTORCHMINLIGHTNING", "fsspec-2022.1.0,pyDeprecate-0.3.2,torchmetrics-0.7.0,pytorch-lightning-1.5.9")
