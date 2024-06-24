help([==[

Description
===========
Imageio is a Python library that provides an easy interface to read and write a wide range of
 image data, including animated images, video, volumetric data, and scientific formats.


More information
================
 - Homepage: https://imageio.github.io
]==])

whatis([==[Description: Imageio is a Python library that provides an easy interface to read and write a wide range of
 image data, including animated images, video, volumetric data, and scientific formats.]==])
whatis([==[Homepage: https://imageio.github.io]==])
whatis([==[URL: https://imageio.github.io]==])

local root = "/app/software/imageio/2.13.5-foss-2021b"

conflict("imageio")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("Pillow/8.3.2-GCCcore-11.2.0") ) then
    load("Pillow/8.3.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTIMAGEIO", root)
setenv("EBVERSIONIMAGEIO", "2.13.5")
setenv("EBDEVELIMAGEIO", pathJoin(root, "logs/imageio-2.13.5-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
