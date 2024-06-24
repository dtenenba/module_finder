help([==[

Description
===========
scikit-image is a collection of algorithms for image processing.


More information
================
 - Homepage: https://scikit-image.org/


Included extensions
===================
imread-0.7.4, pooch-1.5.2, PyWavelets-1.2.0, scikit-image-0.19.1,
tifffile-2021.11.2
]==])

whatis([==[Description: scikit-image is a collection of algorithms for image processing.]==])
whatis([==[Homepage: https://scikit-image.org/]==])
whatis([==[URL: https://scikit-image.org/]==])
whatis([==[Extensions: imread-0.7.4, pooch-1.5.2, PyWavelets-1.2.0, scikit-image-0.19.1, tifffile-2021.11.2]==])

local root = "/app/software/scikit-image/0.19.1-foss-2021b"

conflict("scikit-image")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("Pillow/8.3.2-GCCcore-11.2.0") ) then
    load("Pillow/8.3.2-GCCcore-11.2.0")
end

if not ( isloaded("networkx/2.6.3-foss-2021b") ) then
    load("networkx/2.6.3-foss-2021b")
end

if not ( isloaded("dask/2022.1.0-foss-2021b") ) then
    load("dask/2022.1.0-foss-2021b")
end

if not ( isloaded("imageio/2.13.5-foss-2021b") ) then
    load("imageio/2.13.5-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIKITMINIMAGE", root)
setenv("EBVERSIONSCIKITMINIMAGE", "0.19.1")
setenv("EBDEVELSCIKITMINIMAGE", pathJoin(root, "logs/scikit-image-0.19.1-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTSCIKITMINIMAGE", "PyWavelets-1.2.0,imread-0.7.4,pooch-1.5.2,tifffile-2021.11.2,scikit-image-0.19.1")
