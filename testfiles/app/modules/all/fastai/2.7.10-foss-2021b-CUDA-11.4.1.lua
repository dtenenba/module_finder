help([==[

Description
===========
fastai is a deep learning library which provides practitioners with high-level components.


More information
================
 - Homepage: https://github.com/fastai/fastai


Included extensions
===================
blis-0.7.9, catalogue-2.0.8, confection-0.0.3, contextvars-2.4, cymem-2.0.7,
fastai-2.7.10, fastcore-1.5.27, fastdownload-0.0.7, fastprogress-1.0.3,
flit-3.2.0, flit-core-3.2.0, immutables-0.19, importlib_resources-5.10.0,
langcodes-3.3.0, murmurhash-1.0.9, pathy-0.7.1, preshed-3.0.8,
pydantic-1.10.2, smart_open-5.2.1, spacy-3.4.3, spacy-legacy-3.0.10, spacy-
loggers-1.0.3, srsly-2.4.5, thinc-8.1.5, tqdm-4.64.1, typer-0.7.0,
wasabi-0.10.1
]==])

whatis([==[Description: fastai is a deep learning library which provides practitioners with high-level components.]==])
whatis([==[Homepage: https://github.com/fastai/fastai]==])
whatis([==[URL: https://github.com/fastai/fastai]==])
whatis([==[Extensions: blis-0.7.9, catalogue-2.0.8, confection-0.0.3, contextvars-2.4, cymem-2.0.7, fastai-2.7.10, fastcore-1.5.27, fastdownload-0.0.7, fastprogress-1.0.3, flit-3.2.0, flit-core-3.2.0, immutables-0.19, importlib_resources-5.10.0, langcodes-3.3.0, murmurhash-1.0.9, pathy-0.7.1, preshed-3.0.8, pydantic-1.10.2, smart_open-5.2.1, spacy-3.4.3, spacy-legacy-3.0.10, spacy-loggers-1.0.3, srsly-2.4.5, thinc-8.1.5, tqdm-4.64.1, typer-0.7.0, wasabi-0.10.1]==])

local root = "/app/software/fastai/2.7.10-foss-2021b-CUDA-11.4.1"

conflict("fastai")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0-bare") ) then
    load("Python/3.9.6-GCCcore-11.2.0-bare")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("cuDNN/8.2.2.26-CUDA-11.4.1") ) then
    load("cuDNN/8.2.2.26-CUDA-11.4.1")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("PyTorch/1.11.0-foss-2021b-CUDA-11.4.1") ) then
    load("PyTorch/1.11.0-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("torchvision/0.13.0-foss-2021b-CUDA-11.4.1") ) then
    load("torchvision/0.13.0-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("PyYAML/5.4.1-GCCcore-11.2.0") ) then
    load("PyYAML/5.4.1-GCCcore-11.2.0")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("Pillow/9.1.0-GCCcore-11.2.0") ) then
    load("Pillow/9.1.0-GCCcore-11.2.0")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("typing-extensions/4.2.0-GCCcore-11.2.0") ) then
    load("typing-extensions/4.2.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFASTAI", root)
setenv("EBVERSIONFASTAI", "2.7.10")
setenv("EBDEVELFASTAI", pathJoin(root, "logs/fastai-2.7.10-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTFASTAI", "flit-core-3.2.0,flit-3.2.0,spacy-legacy-3.0.10,wasabi-0.10.1,spacy-loggers-1.0.3,murmurhash-1.0.9,cymem-2.0.7,preshed-3.0.8,catalogue-2.0.8,srsly-2.4.5,pydantic-1.10.2,confection-0.0.3,immutables-0.19,contextvars-2.4,blis-0.7.9,thinc-8.1.5,typer-0.7.0,smart_open-5.2.1,pathy-0.7.1,importlib_resources-5.10.0,tqdm-4.64.1,langcodes-3.3.0,spacy-3.4.3,fastcore-1.5.27,fastprogress-1.0.3,fastdownload-0.0.7,fastai-2.7.10")
