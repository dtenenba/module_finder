help([==[

Description
===========
scvi-tools (single-cell variational inference tools) is a package for probabilistic modeling and
analysis of single-cell omics data, built on top of PyTorch and AnnData.


More information
================
 - Homepage: https://github.com/scverse/scvi-tools


Included extensions
===================
anndata-0.8.0, chex-0.1.5, commonmark-0.9.1, contextlib2-21.6.0, docrep-0.3.2,
flax-0.5.2, ml_collections-0.1.1, mudata-0.2.0, multipledispatch-0.6.0,
natsort-8.1.0, numpyro-0.10.1, optax-0.1.3, pyro-api-0.1.2, pyro-ppl-1.8.0,
rich-11.1.0, scvi-tools-0.16.4, toolz-0.12.0, typing_extensions-4.4.0
]==])

whatis([==[Description: scvi-tools (single-cell variational inference tools) is a package for probabilistic modeling and
analysis of single-cell omics data, built on top of PyTorch and AnnData.]==])
whatis([==[Homepage: https://github.com/scverse/scvi-tools]==])
whatis([==[URL: https://github.com/scverse/scvi-tools]==])
whatis([==[Extensions: anndata-0.8.0, chex-0.1.5, commonmark-0.9.1, contextlib2-21.6.0, docrep-0.3.2, flax-0.5.2, ml_collections-0.1.1, mudata-0.2.0, multipledispatch-0.6.0, natsort-8.1.0, numpyro-0.10.1, optax-0.1.3, pyro-api-0.1.2, pyro-ppl-1.8.0, rich-11.1.0, scvi-tools-0.16.4, toolz-0.12.0, typing_extensions-4.4.0]==])

local root = "/app/software/scvi-tools/0.16.4-foss-2021a-CUDA-11.3.1"

conflict("scvi-tools")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("CUDA/11.3.1") ) then
    load("CUDA/11.3.1")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

if not ( isloaded("matplotlib/3.4.2-foss-2021a") ) then
    load("matplotlib/3.4.2-foss-2021a")
end

if not ( isloaded("h5py/3.2.1-foss-2021a") ) then
    load("h5py/3.2.1-foss-2021a")
end

if not ( isloaded("IPython/7.25.0-GCCcore-10.3.0") ) then
    load("IPython/7.25.0-GCCcore-10.3.0")
end

if not ( isloaded("jax/0.3.9-foss-2021a-CUDA-11.3.1") ) then
    load("jax/0.3.9-foss-2021a-CUDA-11.3.1")
end

if not ( isloaded("openpyxl/3.0.7-GCCcore-10.3.0") ) then
    load("openpyxl/3.0.7-GCCcore-10.3.0")
end

if not ( isloaded("PyTorch-Lightning/1.5.9-foss-2021a-CUDA-11.3.1") ) then
    load("PyTorch-Lightning/1.5.9-foss-2021a-CUDA-11.3.1")
end

if not ( isloaded("scikit-learn/0.24.2-foss-2021a") ) then
    load("scikit-learn/0.24.2-foss-2021a")
end

if not ( isloaded("dm-tree/0.1.6-GCCcore-10.3.0") ) then
    load("dm-tree/0.1.6-GCCcore-10.3.0")
end

if not ( isloaded("scanpy/1.8.1-foss-2021a") ) then
    load("scanpy/1.8.1-foss-2021a")
end

if not ( isloaded("scikit-misc/0.1.4-foss-2021a") ) then
    load("scikit-misc/0.1.4-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCVIMINTOOLS", root)
setenv("EBVERSIONSCVIMINTOOLS", "0.16.4")
setenv("EBDEVELSCVIMINTOOLS", pathJoin(root, "logs/scvi-tools-0.16.4-foss-2021a-CUDA-11.3.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTSCVIMINTOOLS", "natsort-8.1.0,anndata-0.8.0,docrep-0.3.2,typing_extensions-4.4.0,flax-0.5.2,multipledispatch-0.6.0,numpyro-0.10.1,toolz-0.12.0,chex-0.1.5,optax-0.1.3,pyro-api-0.1.2,pyro-ppl-1.8.0,commonmark-0.9.1,rich-11.1.0,contextlib2-21.6.0,ml_collections-0.1.1,mudata-0.2.0,scvi-tools-0.16.4")
