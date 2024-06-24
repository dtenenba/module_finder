help([==[

Description
===========
pySCENIC is a lightning-fast python implementation of the SCENIC
pipeline (Single-Cell rEgulatory Network Inference and Clustering) which enables
biologists to infer transcription factors, gene regulatory networks and
cell types from single-cell RNA-seq data.


More information
================
 - Homepage: https://github.com/aertslab/pySCENIC


Included extensions
===================
arboreto-0.1.6, boltons-23.0.0, ctxcore-0.2.0, cytoolz-0.12.1,
frozendict-2.3.8, interlap-0.2.7, multiprocessing_on_dill-3.5.0a4,
pyscenic-0.12.1
]==])

whatis([==[Description: pySCENIC is a lightning-fast python implementation of the SCENIC
pipeline (Single-Cell rEgulatory Network Inference and Clustering) which enables
biologists to infer transcription factors, gene regulatory networks and
cell types from single-cell RNA-seq data.]==])
whatis([==[Homepage: https://github.com/aertslab/pySCENIC]==])
whatis([==[URL: https://github.com/aertslab/pySCENIC]==])
whatis([==[Extensions: arboreto-0.1.6, boltons-23.0.0, ctxcore-0.2.0, cytoolz-0.12.1, frozendict-2.3.8, interlap-0.2.7, multiprocessing_on_dill-3.5.0a4, pyscenic-0.12.1]==])

local root = "/app/software/pySCENIC/0.12.1-foss-2022b"

conflict("pySCENIC")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.2.0") ) then
    load("PyYAML/6.0-GCCcore-12.2.0")
end

if not ( isloaded("Arrow/11.0.0-gfbf-2022b") ) then
    load("Arrow/11.0.0-gfbf-2022b")
end

if not ( isloaded("scikit-learn/1.2.1-gfbf-2022b") ) then
    load("scikit-learn/1.2.1-gfbf-2022b")
end

if not ( isloaded("tqdm/4.64.1-GCCcore-12.2.0") ) then
    load("tqdm/4.64.1-GCCcore-12.2.0")
end

if not ( isloaded("networkx/3.0-gfbf-2022b") ) then
    load("networkx/3.0-gfbf-2022b")
end

if not ( isloaded("dask/2023.7.1-foss-2022b") ) then
    load("dask/2023.7.1-foss-2022b")
end

if not ( isloaded("aiohttp/3.8.5-GCCcore-12.2.0") ) then
    load("aiohttp/3.8.5-GCCcore-12.2.0")
end

if not ( isloaded("dill/0.3.7-GCCcore-12.2.0") ) then
    load("dill/0.3.7-GCCcore-12.2.0")
end

if not ( isloaded("loompy/3.0.7-foss-2022b") ) then
    load("loompy/3.0.7-foss-2022b")
end

if not ( isloaded("umap-learn/0.5.3-foss-2022b") ) then
    load("umap-learn/0.5.3-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYSCENIC", root)
setenv("EBVERSIONPYSCENIC", "0.12.1")
setenv("EBDEVELPYSCENIC", pathJoin(root, "logs/pySCENIC-0.12.1-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPYSCENIC", "cytoolz-0.12.1,multiprocessing_on_dill-3.5.0a4,frozendict-2.3.8,arboreto-0.1.6,boltons-23.0.0,interlap-0.2.7,ctxcore-0.2.0,pyscenic-0.12.1")
