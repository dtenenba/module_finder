help([==[

Description
===========
Uniform Manifold Approximation and Projection (UMAP) is a dimension reduction technique 
that can be used for visualisation similarly to t-SNE, but also for general non-linear 
dimension reduction.


More information
================
 - Homepage: https://umap-learn.readthedocs.io/en/latest/


Included extensions
===================
pynndescent-0.5.12, umap-learn-0.5.6
]==])

whatis([==[Description: 
Uniform Manifold Approximation and Projection (UMAP) is a dimension reduction technique 
that can be used for visualisation similarly to t-SNE, but also for general non-linear 
dimension reduction.
]==])
whatis([==[Homepage: https://umap-learn.readthedocs.io/en/latest/]==])
whatis([==[URL: https://umap-learn.readthedocs.io/en/latest/]==])
whatis([==[Extensions: pynndescent-0.5.12, umap-learn-0.5.6]==])

local root = "/app/software/umap-learn/0.5.6-foss-2023b"

conflict("umap-learn")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

if not ( isloaded("scikit-learn/1.4.0-gfbf-2023b") ) then
    load("scikit-learn/1.4.0-gfbf-2023b")
end

if not ( isloaded("numba/0.59.1-foss-2023b") ) then
    load("numba/0.59.1-foss-2023b")
end

if not ( isloaded("LLVM/16.0.6-GCCcore-13.2.0") ) then
    load("LLVM/16.0.6-GCCcore-13.2.0")
end

if not ( isloaded("tqdm/4.66.2-GCCcore-13.2.0") ) then
    load("tqdm/4.66.2-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTUMAPMINLEARN", root)
setenv("EBVERSIONUMAPMINLEARN", "0.5.6")
setenv("EBDEVELUMAPMINLEARN", pathJoin(root, "logs/umap-learn-0.5.6-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTUMAPMINLEARN", "pynndescent-0.5.12,umap-learn-0.5.6")
