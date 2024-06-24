help([==[

Description
===========
deepcell-tf is a deep learning library for single-cell analysis of biological
 images.This library allows users to apply pre-existing models to imaging data as well as to
 develop new deep learning models for single-cell analysis.


More information
================
 - Homepage: https://deepcell.readthedocs.io/en/master/


Included extensions
===================
DeepCell-0.11.1, DeepCell-Toolbox-0.11.2, DeepCell-Tracking-0.5.7,
pydot-1.4.2, tensorflow-addons-0.17.0, typeguard-2.13.3
]==])

whatis([==[Description: deepcell-tf is a deep learning library for single-cell analysis of biological
 images.This library allows users to apply pre-existing models to imaging data as well as to
 develop new deep learning models for single-cell analysis.]==])
whatis([==[Homepage: https://deepcell.readthedocs.io/en/master/]==])
whatis([==[URL: https://deepcell.readthedocs.io/en/master/]==])
whatis([==[Extensions: DeepCell-0.11.1, DeepCell-Toolbox-0.11.2, DeepCell-Tracking-0.5.7, pydot-1.4.2, tensorflow-addons-0.17.0, typeguard-2.13.3]==])

local root = "/app/software/DeepCell/0.11.1-foss-2021b-CUDA-11.4.1"

conflict("DeepCell")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("IPython/7.26.0-GCCcore-11.2.0") ) then
    load("IPython/7.26.0-GCCcore-11.2.0")
end

if not ( isloaded("OpenCV/4.5.5-foss-2021b-contrib") ) then
    load("OpenCV/4.5.5-foss-2021b-contrib")
end

if not ( isloaded("tqdm/4.62.3-GCCcore-11.2.0") ) then
    load("tqdm/4.62.3-GCCcore-11.2.0")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("scikit-image/0.19.1-foss-2021b") ) then
    load("scikit-image/0.19.1-foss-2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1") ) then
    load("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("spektral/1.1.0-foss-2021b-CUDA-11.4.1") ) then
    load("spektral/1.1.0-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("Graphviz/2.50.0-GCCcore-11.2.0") ) then
    load("Graphviz/2.50.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTDEEPCELL", root)
setenv("EBVERSIONDEEPCELL", "0.11.1")
setenv("EBDEVELDEEPCELL", pathJoin(root, "logs/DeepCell-0.11.1-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTDEEPCELL", "pydot-1.4.2,typeguard-2.13.3,tensorflow-addons-0.17.0,DeepCell-Toolbox-0.11.2,DeepCell-Tracking-0.5.7,DeepCell-0.11.1")
