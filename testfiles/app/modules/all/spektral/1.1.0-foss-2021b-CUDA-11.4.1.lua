help([==[

Description
===========
Spektral is a Python library for graph deep learning. The main goal of this
 project is to provide a simple but flexible framework for creating graph neural networks (GNNs).


More information
================
 - Homepage: https://github.com/danielegrattarola/spektral
]==])

whatis([==[Description: Spektral is a Python library for graph deep learning. The main goal of this
 project is to provide a simple but flexible framework for creating graph neural networks (GNNs).]==])
whatis([==[Homepage: https://github.com/danielegrattarola/spektral]==])
whatis([==[URL: https://github.com/danielegrattarola/spektral]==])

local root = "/app/software/spektral/1.1.0-foss-2021b-CUDA-11.4.1"

conflict("spektral")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("lxml/4.6.3-GCCcore-11.2.0") ) then
    load("lxml/4.6.3-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("networkx/2.6.3-foss-2021b") ) then
    load("networkx/2.6.3-foss-2021b")
end

if not ( isloaded("tqdm/4.62.3-GCCcore-11.2.0") ) then
    load("tqdm/4.62.3-GCCcore-11.2.0")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1") ) then
    load("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSPEKTRAL", root)
setenv("EBVERSIONSPEKTRAL", "1.1.0")
setenv("EBDEVELSPEKTRAL", pathJoin(root, "logs/spektral-1.1.0-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
