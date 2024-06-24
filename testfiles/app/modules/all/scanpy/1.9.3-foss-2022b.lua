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
anndata-0.9.2, natsort-8.2.0, scanpy-1.9.3, session_info-1.0.0, sinfo-0.3.4,
stdlib_list-0.9.0
]==])

whatis([==[Description: Scanpy is a scalable toolkit for analyzing single-cell gene expression data built
 jointly with anndata. It includes preprocessing, visualization, clustering, trajectory inference
 and differential expression testing. The Python-based implementation efficiently deals with
 datasets of more than one million cells.
]==])
whatis([==[Homepage: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[URL: https://scanpy.readthedocs.io/en/stable/]==])
whatis([==[Extensions: anndata-0.9.2, natsort-8.2.0, scanpy-1.9.3, session_info-1.0.0, sinfo-0.3.4, stdlib_list-0.9.0]==])

local root = "/app/software/scanpy/1.9.3-foss-2022b"

conflict("scanpy")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("h5py/3.8.0-foss-2022b") ) then
    load("h5py/3.8.0-foss-2022b")
end

if not ( isloaded("networkx/3.0-gfbf-2022b") ) then
    load("networkx/3.0-gfbf-2022b")
end

if not ( isloaded("numba/0.57.0rc1-foss-2022b") ) then
    load("numba/0.57.0rc1-foss-2022b")
end

if not ( isloaded("PyTables/3.8.0-foss-2022b") ) then
    load("PyTables/3.8.0-foss-2022b")
end

if not ( isloaded("statsmodels/0.14.0-gfbf-2022b") ) then
    load("statsmodels/0.14.0-gfbf-2022b")
end

if not ( isloaded("scikit-learn/1.2.1-gfbf-2022b") ) then
    load("scikit-learn/1.2.1-gfbf-2022b")
end

if not ( isloaded("Seaborn/0.12.2-foss-2022b") ) then
    load("Seaborn/0.12.2-foss-2022b")
end

if not ( isloaded("tqdm/4.64.1-GCCcore-12.2.0") ) then
    load("tqdm/4.64.1-GCCcore-12.2.0")
end

if not ( isloaded("leidenalg/0.10.1-foss-2022b") ) then
    load("leidenalg/0.10.1-foss-2022b")
end

if not ( isloaded("umap-learn/0.5.3-foss-2022b") ) then
    load("umap-learn/0.5.3-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCANPY", root)
setenv("EBVERSIONSCANPY", "1.9.3")
setenv("EBDEVELSCANPY", pathJoin(root, "logs/scanpy-1.9.3-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTSCANPY", "natsort-8.2.0,anndata-0.9.2,stdlib_list-0.9.0,sinfo-0.3.4,session_info-1.0.0,scanpy-1.9.3")
