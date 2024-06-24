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
anndata-0.7.8, natsort-8.0.2, pynndescent-0.5.5, scanpy-1.8.2, sinfo-0.3.4,
stdlib-list-0.8.0, umap-learn-0.5.2, xlrd-1.2.0
]==])

whatis([==[Description: Scanpy is a scalable toolkit for analyzing single-cell gene expression data built
 jointly with anndata. It includes preprocessing, visualization, clustering, trajectory inference
 and differential expression testing. The Python-based implementation efficiently deals with
 datasets of more than one million cells.
]==])
whatis([==[Homepage: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[URL: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[Extensions: anndata-0.7.8, natsort-8.0.2, pynndescent-0.5.5, scanpy-1.8.2, sinfo-0.3.4, stdlib-list-0.8.0, umap-learn-0.5.2, xlrd-1.2.0]==])

local root = "/app/software/scanpy/1.8.2-foss-2021b"

conflict("scanpy")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("h5py/3.6.0-foss-2021b") ) then
    load("h5py/3.6.0-foss-2021b")
end

if not ( isloaded("networkx/2.6.3-foss-2021b") ) then
    load("networkx/2.6.3-foss-2021b")
end

if not ( isloaded("numba/0.54.1-foss-2021b") ) then
    load("numba/0.54.1-foss-2021b")
end

if not ( isloaded("PyTables/3.6.1-foss-2021b") ) then
    load("PyTables/3.6.1-foss-2021b")
end

if not ( isloaded("statsmodels/0.13.1-foss-2021b") ) then
    load("statsmodels/0.13.1-foss-2021b")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("Seaborn/0.11.2-foss-2021b") ) then
    load("Seaborn/0.11.2-foss-2021b")
end

if not ( isloaded("tqdm/4.62.3-GCCcore-11.2.0") ) then
    load("tqdm/4.62.3-GCCcore-11.2.0")
end

if not ( isloaded("leidenalg/0.8.8-foss-2021b") ) then
    load("leidenalg/0.8.8-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCANPY", root)
setenv("EBVERSIONSCANPY", "1.8.2")
setenv("EBDEVELSCANPY", pathJoin(root, "logs/scanpy-1.8.2-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTSCANPY", "natsort-8.0.2,xlrd-1.2.0,anndata-0.7.8,pynndescent-0.5.5,umap-learn-0.5.2,stdlib-list-0.8.0,sinfo-0.3.4,scanpy-1.8.2")
