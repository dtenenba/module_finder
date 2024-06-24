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
anndata-0.7.6, get_version-2.1, legacy-api-wrap-1.2, natsort-7.1.1,
patsy-0.5.1, pynndescent-0.5.2, scanpy-1.7.2, sinfo-0.3.1, stdlib-list-0.8.0,
umap-learn-0.3.10
]==])

whatis([==[Description: Scanpy is a scalable toolkit for analyzing single-cell gene expression data built
 jointly with anndata. It includes preprocessing, visualization, clustering, trajectory inference
 and differential expression testing. The Python-based implementation efficiently deals with
 datasets of more than one million cells.
]==])
whatis([==[Homepage: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[URL: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[Extensions: anndata-0.7.6, get_version-2.1, legacy-api-wrap-1.2, natsort-7.1.1, patsy-0.5.1, pynndescent-0.5.2, scanpy-1.7.2, sinfo-0.3.1, stdlib-list-0.8.0, umap-learn-0.3.10]==])

local root = "/app/software/scanpy/1.7.2-foss-2020b"

conflict("scanpy")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("h5py/3.1.0-foss-2020b") ) then
    load("h5py/3.1.0-foss-2020b")
end

if not ( isloaded("networkx/2.5-foss-2020b") ) then
    load("networkx/2.5-foss-2020b")
end

if not ( isloaded("numba/0.52.0-foss-2020b") ) then
    load("numba/0.52.0-foss-2020b")
end

if not ( isloaded("PyTables/3.6.1-foss-2020b") ) then
    load("PyTables/3.6.1-foss-2020b")
end

if not ( isloaded("statsmodels/0.12.1-foss-2020b") ) then
    load("statsmodels/0.12.1-foss-2020b")
end

if not ( isloaded("scikit-learn/0.23.2-foss-2020b") ) then
    load("scikit-learn/0.23.2-foss-2020b")
end

if not ( isloaded("Seaborn/0.11.1-foss-2020b") ) then
    load("Seaborn/0.11.1-foss-2020b")
end

if not ( isloaded("tqdm/4.56.2-GCCcore-10.2.0") ) then
    load("tqdm/4.56.2-GCCcore-10.2.0")
end

if not ( isloaded("leidenalg/0.8.3-foss-2020b") ) then
    load("leidenalg/0.8.3-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCANPY", root)
setenv("EBVERSIONSCANPY", "1.7.2")
setenv("EBDEVELSCANPY", pathJoin(root, "logs/scanpy-1.7.2-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
setenv("EBEXTSLISTSCANPY", "natsort-7.1.1,anndata-0.7.6,patsy-0.5.1,pynndescent-0.5.2,umap-learn-0.3.10,get_version-2.1,legacy-api-wrap-1.2,stdlib-list-0.8.0,sinfo-0.3.1,scanpy-1.7.2")
