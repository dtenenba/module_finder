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
anndata-0.7.6, natsort-7.1.1, pynndescent-0.5.4, scanpy-1.8.1, sinfo-0.3.4,
stdlib-list-0.8.0, umap-learn-0.5.1, xlrd-1.2.0
]==])

whatis([==[Description: Scanpy is a scalable toolkit for analyzing single-cell gene expression data built
 jointly with anndata. It includes preprocessing, visualization, clustering, trajectory inference
 and differential expression testing. The Python-based implementation efficiently deals with
 datasets of more than one million cells.
]==])
whatis([==[Homepage: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[URL: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[Extensions: anndata-0.7.6, natsort-7.1.1, pynndescent-0.5.4, scanpy-1.8.1, sinfo-0.3.4, stdlib-list-0.8.0, umap-learn-0.5.1, xlrd-1.2.0]==])

local root = "/app/software/scanpy/1.8.1-foss-2021a"

conflict("scanpy")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

if not ( isloaded("h5py/3.2.1-foss-2021a") ) then
    load("h5py/3.2.1-foss-2021a")
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

if not ( isloaded("scikit-learn/0.24.2-foss-2021a") ) then
    load("scikit-learn/0.24.2-foss-2021a")
end

if not ( isloaded("Seaborn/0.11.2-foss-2021a") ) then
    load("Seaborn/0.11.2-foss-2021a")
end

if not ( isloaded("tqdm/4.61.2-GCCcore-10.3.0") ) then
    load("tqdm/4.61.2-GCCcore-10.3.0")
end

if not ( isloaded("leidenalg/0.8.7-foss-2021a") ) then
    load("leidenalg/0.8.7-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCANPY", root)
setenv("EBVERSIONSCANPY", "1.8.1")
setenv("EBDEVELSCANPY", pathJoin(root, "logs/scanpy-1.8.1-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTSCANPY", "natsort-7.1.1,xlrd-1.2.0,anndata-0.7.6,pynndescent-0.5.4,umap-learn-0.5.1,stdlib-list-0.8.0,sinfo-0.3.4,scanpy-1.8.1")
