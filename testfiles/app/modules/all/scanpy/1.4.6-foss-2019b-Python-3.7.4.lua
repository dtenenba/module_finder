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
anndata-0.7.1, future-fstrings-1.2.0, get_version-2.1, importlib-
metadata-0.17, legacy-api-wrap-1.2, natsort-7.0.0, patsy-0.5.1, scanpy-1.4.6,
seaborn-0.9.0, setuptools-scm-3.5.0, statsmodels-0.10.1, tqdm-4.32.2, umap-
learn-0.3.10
]==])

whatis([==[Description: scVelo is a scalable toolkit for estimating and analyzing RNA velocities in single cells using
 dynamical modeling.]==])
whatis([==[Homepage: https://scvelo.org]==])
whatis([==[URL: https://scvelo.org]==])
whatis([==[Extensions: anndata-0.7.1, future-fstrings-1.2.0, get_version-2.1, importlib-metadata-0.17, legacy-api-wrap-1.2, natsort-7.0.0, patsy-0.5.1, scanpy-1.4.6, seaborn-0.9.0, setuptools-scm-3.5.0, statsmodels-0.10.1, tqdm-4.32.2, umap-learn-0.3.10]==])

local root = "/app/software/scanpy/1.4.6-foss-2019b-Python-3.7.4"

conflict("scanpy")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("scikit-learn/0.21.3-foss-2019b-Python-3.7.4") ) then
    load("scikit-learn/0.21.3-foss-2019b-Python-3.7.4")
end

if not ( isloaded("networkx/2.4-foss-2019b-Python-3.7.4") ) then
    load("networkx/2.4-foss-2019b-Python-3.7.4")
end

if not ( isloaded("numba/0.47.0-foss-2019b-Python-3.7.4") ) then
    load("numba/0.47.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("PyTables/3.6.1-foss-2019b-Python-3.7.4") ) then
    load("PyTables/3.6.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("poetry/1.0.5-foss-2019b-Python-3.7.4") ) then
    load("poetry/1.0.5-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Tkinter/3.7.4-GCCcore-8.3.0") ) then
    load("Tkinter/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("freetype/2.10.1-GCCcore-8.3.0") ) then
    load("freetype/2.10.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCANPY", root)
setenv("EBVERSIONSCANPY", "1.4.6")
setenv("EBDEVELSCANPY", pathJoin(root, "logs/scanpy-1.4.6-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTSCANPY", "future-fstrings-1.2.0,setuptools-scm-3.5.0,anndata-0.7.1,get_version-2.1,legacy-api-wrap-1.2,seaborn-0.9.0,tqdm-4.32.2,importlib-metadata-0.17,statsmodels-0.10.1,patsy-0.5.1,natsort-7.0.0,umap-learn-0.3.10,scanpy-1.4.6")
