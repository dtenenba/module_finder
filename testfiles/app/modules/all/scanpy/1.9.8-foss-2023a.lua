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
anndata-0.10.5, array_api_compat-1.4.1, natsort-8.4.0, scanpy-1.9.8,
session_info-1.0.0, sinfo-0.3.4, stdlib_list-0.10.0
]==])

whatis([==[Description: Scanpy is a scalable toolkit for analyzing single-cell gene expression data built
 jointly with anndata. It includes preprocessing, visualization, clustering, trajectory inference
 and differential expression testing. The Python-based implementation efficiently deals with
 datasets of more than one million cells.
]==])
whatis([==[Homepage: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[URL: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[Extensions: anndata-0.10.5, array_api_compat-1.4.1, natsort-8.4.0, scanpy-1.9.8, session_info-1.0.0, sinfo-0.3.4, stdlib_list-0.10.0]==])

local root = "/app/software/scanpy/1.9.8-foss-2023a"

conflict("scanpy")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("h5py/3.9.0-foss-2023a") ) then
    load("h5py/3.9.0-foss-2023a")
end

if not ( isloaded("networkx/3.1-gfbf-2023a") ) then
    load("networkx/3.1-gfbf-2023a")
end

if not ( isloaded("numba/0.58.1-foss-2023a") ) then
    load("numba/0.58.1-foss-2023a")
end

if not ( isloaded("PyTables/3.9.2-foss-2023a") ) then
    load("PyTables/3.9.2-foss-2023a")
end

if not ( isloaded("statsmodels/0.14.1-gfbf-2023a") ) then
    load("statsmodels/0.14.1-gfbf-2023a")
end

if not ( isloaded("scikit-learn/1.3.1-gfbf-2023a") ) then
    load("scikit-learn/1.3.1-gfbf-2023a")
end

if not ( isloaded("Seaborn/0.13.2-foss-2023a") ) then
    load("Seaborn/0.13.2-foss-2023a")
end

if not ( isloaded("tqdm/4.66.1-GCCcore-12.3.0") ) then
    load("tqdm/4.66.1-GCCcore-12.3.0")
end

if not ( isloaded("leidenalg/0.10.2-foss-2023a") ) then
    load("leidenalg/0.10.2-foss-2023a")
end

if not ( isloaded("umap-learn/0.5.5-foss-2023a") ) then
    load("umap-learn/0.5.5-foss-2023a")
end

if not ( isloaded("hatchling/1.18.0-GCCcore-12.3.0") ) then
    load("hatchling/1.18.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCANPY", root)
setenv("EBVERSIONSCANPY", "1.9.8")
setenv("EBDEVELSCANPY", pathJoin(root, "logs/scanpy-1.9.8-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTSCANPY", "natsort-8.4.0,array_api_compat-1.4.1,anndata-0.10.5,stdlib_list-0.10.0,sinfo-0.3.4,session_info-1.0.0,scanpy-1.9.8")
