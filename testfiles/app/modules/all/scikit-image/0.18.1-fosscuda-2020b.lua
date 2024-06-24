help([==[

Description
===========
scikit-image is a collection of algorithms for image processing.


More information
================
 - Homepage: https://scikit-image.org/


Included extensions
===================
imageio-2.9.0, imread-0.7.4, pooch-1.3.0, PyWavelets-1.1.1, scikit-
image-0.18.1, tifffile-2021.2.1
]==])

whatis([==[Description: scikit-image is a collection of algorithms for image processing.]==])
whatis([==[Homepage: https://scikit-image.org/]==])
whatis([==[URL: https://scikit-image.org/]==])
whatis([==[Extensions: imageio-2.9.0, imread-0.7.4, pooch-1.3.0, PyWavelets-1.1.1, scikit-image-0.18.1, tifffile-2021.2.1]==])

local root = "/app/software/scikit-image/0.18.1-fosscuda-2020b"

conflict("scikit-image")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-fosscuda-2020b") ) then
    load("matplotlib/3.3.3-fosscuda-2020b")
end

if not ( isloaded("Pillow/8.0.1-GCCcore-10.2.0") ) then
    load("Pillow/8.0.1-GCCcore-10.2.0")
end

if not ( isloaded("networkx/2.5-fosscuda-2020b") ) then
    load("networkx/2.5-fosscuda-2020b")
end

if not ( isloaded("dask/2021.2.0-fosscuda-2020b") ) then
    load("dask/2021.2.0-fosscuda-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIKITMINIMAGE", root)
setenv("EBVERSIONSCIKITMINIMAGE", "0.18.1")
setenv("EBDEVELSCIKITMINIMAGE", pathJoin(root, "logs/scikit-image-0.18.1-fosscuda-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.2
setenv("EBEXTSLISTSCIKITMINIMAGE", "PyWavelets-1.1.1,imageio-2.9.0,imread-0.7.4,pooch-1.3.0,tifffile-2021.2.1,scikit-image-0.18.1")
