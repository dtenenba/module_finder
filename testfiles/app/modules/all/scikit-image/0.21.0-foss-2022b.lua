help([==[

Description
===========
scikit-image is a collection of algorithms for image processing.


More information
================
 - Homepage: https://scikit-image.org/


Included extensions
===================
imread-0.7.4, lazy_loader-0.3, PyWavelets-1.4.1, scikit-image-0.21.0,
tifffile-2023.7.18
]==])

whatis([==[Description: scikit-image is a collection of algorithms for image processing.]==])
whatis([==[Homepage: https://scikit-image.org/]==])
whatis([==[URL: https://scikit-image.org/]==])
whatis([==[Extensions: imread-0.7.4, lazy_loader-0.3, PyWavelets-1.4.1, scikit-image-0.21.0, tifffile-2023.7.18]==])

local root = "/app/software/scikit-image/0.21.0-foss-2022b"

conflict("scikit-image")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("matplotlib/3.7.0-gfbf-2022b") ) then
    load("matplotlib/3.7.0-gfbf-2022b")
end

if not ( isloaded("Pillow/9.4.0-GCCcore-12.2.0") ) then
    load("Pillow/9.4.0-GCCcore-12.2.0")
end

if not ( isloaded("networkx/3.0-gfbf-2022b") ) then
    load("networkx/3.0-gfbf-2022b")
end

if not ( isloaded("dask/2023.7.1-foss-2022b") ) then
    load("dask/2023.7.1-foss-2022b")
end

if not ( isloaded("imageio/2.31.1-foss-2022b") ) then
    load("imageio/2.31.1-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIKITMINIMAGE", root)
setenv("EBVERSIONSCIKITMINIMAGE", "0.21.0")
setenv("EBDEVELSCIKITMINIMAGE", pathJoin(root, "logs/scikit-image-0.21.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTSCIKITMINIMAGE", "PyWavelets-1.4.1,imread-0.7.4,tifffile-2023.7.18,lazy_loader-0.3,scikit-image-0.21.0")
