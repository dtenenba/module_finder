help([==[

Description
===========
scVelo is a scalable toolkit for estimating and analyzing RNA velocities in single cells using
 dynamical modeling.


More information
================
 - Homepage: https://scvelo.org


Included extensions
===================
anndata-0.7.6, get_version-3.2, legacy-api-wrap-1.2, loompy-3.0.6,
natsort-7.1.1, numpy-groupies-0.9.13, scanpy-1.8.1, scVelo-0.2.4,
seaborn-0.11.1, sinfo-0.3.4, stdlib-list-0.8.0, umap-learn-0.4.6, xlrd-1.2.0
]==])

whatis([==[Description: scVelo is a scalable toolkit for estimating and analyzing RNA velocities in single cells using
 dynamical modeling.]==])
whatis([==[Homepage: https://scvelo.org]==])
whatis([==[URL: https://scvelo.org]==])
whatis([==[Extensions: anndata-0.7.6, get_version-3.2, legacy-api-wrap-1.2, loompy-3.0.6, natsort-7.1.1, numpy-groupies-0.9.13, scanpy-1.8.1, scVelo-0.2.4, seaborn-0.11.1, sinfo-0.3.4, stdlib-list-0.8.0, umap-learn-0.4.6, xlrd-1.2.0]==])

local root = "/app/software/scVelo/0.2.4-foss-2021a"

conflict("scVelo")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

if not ( isloaded("scikit-learn/0.24.2-foss-2021a") ) then
    load("scikit-learn/0.24.2-foss-2021a")
end

if not ( isloaded("h5py/3.2.1-foss-2021a") ) then
    load("h5py/3.2.1-foss-2021a")
end

if not ( isloaded("matplotlib/3.4.2-foss-2021a") ) then
    load("matplotlib/3.4.2-foss-2021a")
end

if not ( isloaded("networkx/2.5.1-foss-2021a") ) then
    load("networkx/2.5.1-foss-2021a")
end

if not ( isloaded("numba/0.53.1-foss-2021a") ) then
    load("numba/0.53.1-foss-2021a")
end

if not ( isloaded("PyTables/3.6.1-foss-2021a") ) then
    load("PyTables/3.6.1-foss-2021a")
end

if not ( isloaded("statsmodels/0.12.2-foss-2021a") ) then
    load("statsmodels/0.12.2-foss-2021a")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.3.0") ) then
    load("libpng/1.6.37-GCCcore-10.3.0")
end

if not ( isloaded("freetype/2.10.4-GCCcore-10.3.0") ) then
    load("freetype/2.10.4-GCCcore-10.3.0")
end

if not ( isloaded("Tkinter/3.9.5-GCCcore-10.3.0") ) then
    load("Tkinter/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("tqdm/4.61.2-GCCcore-10.3.0") ) then
    load("tqdm/4.61.2-GCCcore-10.3.0")
end

if not ( isloaded("typing-extensions/3.10.0.0-GCCcore-10.3.0") ) then
    load("typing-extensions/3.10.0.0-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCVELO", root)
setenv("EBVERSIONSCVELO", "0.2.4")
setenv("EBDEVELSCVELO", pathJoin(root, "logs/scVelo-0.2.4-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTSCVELO", "numpy-groupies-0.9.13,seaborn-0.11.1,natsort-7.1.1,get_version-3.2,legacy-api-wrap-1.2,loompy-3.0.6,xlrd-1.2.0,anndata-0.7.6,stdlib-list-0.8.0,sinfo-0.3.4,scanpy-1.8.1,umap-learn-0.4.6,scVelo-0.2.4")
