help([==[

Description
===========
Python code for identifying doublets in single-cell RNA-seq data


More information
================
 - Homepage: https://github.com/AllonKleinLab/scrublet


Included extensions
===================
annoy-1.17.3, pynndescent-0.5.10, scrublet-0.2.2
]==])

whatis([==[Description: Python code for identifying doublets in single-cell RNA-seq data]==])
whatis([==[Homepage: https://github.com/AllonKleinLab/scrublet]==])
whatis([==[URL: https://github.com/AllonKleinLab/scrublet]==])
whatis([==[Extensions: annoy-1.17.3, pynndescent-0.5.10, scrublet-0.2.2]==])

local root = "/app/software/scrublet/0.2.2-foss-2022b"

conflict("scrublet")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("scikit-learn/1.2.1-gfbf-2022b") ) then
    load("scikit-learn/1.2.1-gfbf-2022b")
end

if not ( isloaded("scikit-image/0.21.0-foss-2022b") ) then
    load("scikit-image/0.21.0-foss-2022b")
end

if not ( isloaded("matplotlib/3.7.0-gfbf-2022b") ) then
    load("matplotlib/3.7.0-gfbf-2022b")
end

if not ( isloaded("numba/0.57.0rc1-foss-2022b") ) then
    load("numba/0.57.0rc1-foss-2022b")
end

if not ( isloaded("tqdm/4.64.1-GCCcore-12.2.0") ) then
    load("tqdm/4.64.1-GCCcore-12.2.0")
end

if not ( isloaded("umap-learn/0.5.3-foss-2022b") ) then
    load("umap-learn/0.5.3-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCRUBLET", root)
setenv("EBVERSIONSCRUBLET", "0.2.2")
setenv("EBDEVELSCRUBLET", pathJoin(root, "logs/scrublet-0.2.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTSCRUBLET", "annoy-1.17.3,pynndescent-0.5.10,scrublet-0.2.2")
