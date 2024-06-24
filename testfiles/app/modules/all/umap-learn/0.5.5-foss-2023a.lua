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
pynndescent-0.5.11, umap-learn-0.5.5
]==])

whatis([==[Description: 
Uniform Manifold Approximation and Projection (UMAP) is a dimension reduction technique 
that can be used for visualisation similarly to t-SNE, but also for general non-linear 
dimension reduction.
]==])
whatis([==[Homepage: https://umap-learn.readthedocs.io/en/latest/]==])
whatis([==[URL: https://umap-learn.readthedocs.io/en/latest/]==])
whatis([==[Extensions: pynndescent-0.5.11, umap-learn-0.5.5]==])

local root = "/app/software/umap-learn/0.5.5-foss-2023a"

conflict("umap-learn")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("scikit-learn/1.3.1-gfbf-2023a") ) then
    load("scikit-learn/1.3.1-gfbf-2023a")
end

if not ( isloaded("numba/0.58.1-foss-2023a") ) then
    load("numba/0.58.1-foss-2023a")
end

if not ( isloaded("LLVM/16.0.6-GCCcore-12.3.0") ) then
    load("LLVM/16.0.6-GCCcore-12.3.0")
end

if not ( isloaded("tqdm/4.66.1-GCCcore-12.3.0") ) then
    load("tqdm/4.66.1-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTUMAPMINLEARN", root)
setenv("EBVERSIONUMAPMINLEARN", "0.5.5")
setenv("EBDEVELUMAPMINLEARN", pathJoin(root, "logs/umap-learn-0.5.5-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTUMAPMINLEARN", "pynndescent-0.5.11,umap-learn-0.5.5")
