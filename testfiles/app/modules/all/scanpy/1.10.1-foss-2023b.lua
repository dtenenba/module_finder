help([==[

Description
===========
Scanpy is a scalable toolkit for analyzing single-cell gene expression data built
 jointly with anndata. It includes preprocessing, visualization, clustering, trajectory inference
 and differential expression testing. The Python-based implementation efficiently deals with
 datasets of more than one million cells.


More information
================
 - Homepage: https://scanpy.readthedocs.io/en/stable/


Included extensions
===================
joblib-1.4.0, legacy_api_wrap-1.4, natsort-8.4.0, scanpy-1.10.1, session-
info-1.0.0, stdlib_list-0.10.0
]==])

whatis([==[Description: Scanpy is a scalable toolkit for analyzing single-cell gene expression data built
 jointly with anndata. It includes preprocessing, visualization, clustering, trajectory inference
 and differential expression testing. The Python-based implementation efficiently deals with
 datasets of more than one million cells.
]==])
whatis([==[Homepage: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[URL: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[Extensions: joblib-1.4.0, legacy_api_wrap-1.4, natsort-8.4.0, scanpy-1.10.1, session-info-1.0.0, stdlib_list-0.10.0]==])

local root = "/app/software/scanpy/1.10.1-foss-2023b"

conflict("scanpy")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

if not ( isloaded("matplotlib/3.8.2-gfbf-2023b") ) then
    load("matplotlib/3.8.2-gfbf-2023b")
end

if not ( isloaded("Seaborn/0.13.2-gfbf-2023b") ) then
    load("Seaborn/0.13.2-gfbf-2023b")
end

if not ( isloaded("h5py/3.11.0-foss-2023b") ) then
    load("h5py/3.11.0-foss-2023b")
end

if not ( isloaded("tqdm/4.66.2-GCCcore-13.2.0") ) then
    load("tqdm/4.66.2-GCCcore-13.2.0")
end

if not ( isloaded("scikit-learn/1.4.0-gfbf-2023b") ) then
    load("scikit-learn/1.4.0-gfbf-2023b")
end

if not ( isloaded("statsmodels/0.14.1-gfbf-2023b") ) then
    load("statsmodels/0.14.1-gfbf-2023b")
end

if not ( isloaded("networkx/3.2.1-gfbf-2023b") ) then
    load("networkx/3.2.1-gfbf-2023b")
end

if not ( isloaded("numba/0.59.1-foss-2023b") ) then
    load("numba/0.59.1-foss-2023b")
end

if not ( isloaded("umap-learn/0.5.6-foss-2023b") ) then
    load("umap-learn/0.5.6-foss-2023b")
end

if not ( isloaded("hatchling/1.18.0-GCCcore-13.2.0") ) then
    load("hatchling/1.18.0-GCCcore-13.2.0")
end

if not ( isloaded("anndata/0.10.7-foss-2023b") ) then
    load("anndata/0.10.7-foss-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCANPY", root)
setenv("EBVERSIONSCANPY", "1.10.1")
setenv("EBDEVELSCANPY", pathJoin(root, "logs/scanpy-1.10.1-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTSCANPY", "stdlib_list-0.10.0,natsort-8.4.0,joblib-1.4.0,session-info-1.0.0,legacy_api_wrap-1.4,scanpy-1.10.1")
