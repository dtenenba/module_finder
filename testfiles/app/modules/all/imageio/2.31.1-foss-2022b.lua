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

local root = "/app/software/imageio/2.31.1-foss-2022b"

conflict("imageio")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("Pillow/9.4.0-GCCcore-12.2.0") ) then
    load("Pillow/9.4.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTIMAGEIO", root)
setenv("EBVERSIONIMAGEIO", "2.31.1")
setenv("EBDEVELIMAGEIO", pathJoin(root, "logs/imageio-2.31.1-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
