help([==[

Description
===========
Object Detection with Star-convex Shapes.


More information
================
 - Homepage: https://github.com/stardist/stardist


Included extensions
===================
csbdeep-0.7.2, edt-2.3.0, stardist-0.8.3, tifffile-2022.10.10
]==])

whatis([==[Description: Object Detection with Star-convex Shapes.]==])
whatis([==[Homepage: https://github.com/stardist/stardist]==])
whatis([==[URL: https://github.com/stardist/stardist]==])
whatis([==[Extensions: csbdeep-0.7.2, edt-2.3.0, stardist-0.8.3, tifffile-2022.10.10]==])

local root = "/app/software/stardist/0.8.3-foss-2021b-CUDA-11.4.1"

conflict("stardist")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1") ) then
    load("TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1")
end

if not ( isloaded("numba/0.54.1-foss-2021b") ) then
    load("numba/0.54.1-foss-2021b")
end

if not ( isloaded("imageio/2.13.5-foss-2021b") ) then
    load("imageio/2.13.5-foss-2021b")
end

if not ( isloaded("scikit-image/0.19.1-foss-2021b") ) then
    load("scikit-image/0.19.1-foss-2021b")
end

if not ( isloaded("tqdm/4.62.3-GCCcore-11.2.0") ) then
    load("tqdm/4.62.3-GCCcore-11.2.0")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSTARDIST", root)
setenv("EBVERSIONSTARDIST", "0.8.3")
setenv("EBDEVELSTARDIST", pathJoin(root, "logs/stardist-0.8.3-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTSTARDIST", "tifffile-2022.10.10,csbdeep-0.7.2,edt-2.3.0,stardist-0.8.3")
