help([==[

Description
===========
Python code for identifying doublets in single-cell RNA-seq data


More information
================
 - Homepage: https://github.com/AllonKleinLab/scrublet


Included extensions
===================
annoy-1.17.1, pynndescent-0.5.8, scrublet-0.2.1, umap-learn-0.5.3
]==])

whatis([==[Description: Python code for identifying doublets in single-cell RNA-seq data]==])
whatis([==[Homepage: https://github.com/AllonKleinLab/scrublet]==])
whatis([==[URL: https://github.com/AllonKleinLab/scrublet]==])
whatis([==[Extensions: annoy-1.17.1, pynndescent-0.5.8, scrublet-0.2.1, umap-learn-0.5.3]==])

local root = "/app/software/scrublet/0.2.1-foss-2021b"

conflict("scrublet")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2021b") ) then
    load("SciPy-bundle/2022.05-foss-2021b")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("scikit-image/0.19.1-foss-2021b") ) then
    load("scikit-image/0.19.1-foss-2021b")
end

if not ( isloaded("matplotlib/3.5.2-foss-2021b") ) then
    load("matplotlib/3.5.2-foss-2021b")
end

if not ( isloaded("numba/0.54.1-foss-2021b") ) then
    load("numba/0.54.1-foss-2021b")
end

if not ( isloaded("tqdm/4.62.3-GCCcore-11.2.0") ) then
    load("tqdm/4.62.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCRUBLET", root)
setenv("EBVERSIONSCRUBLET", "0.2.1")
setenv("EBDEVELSCRUBLET", pathJoin(root, "logs/scrublet-0.2.1-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTSCRUBLET", "annoy-1.17.1,pynndescent-0.5.8,umap-learn-0.5.3,scrublet-0.2.1")
