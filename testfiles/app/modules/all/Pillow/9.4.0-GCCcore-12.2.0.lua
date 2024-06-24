help([==[

Description
===========
Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.


More information
================
 - Homepage: https://pillow.readthedocs.org/
]==])

whatis([==[Description: Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.]==])
whatis([==[Homepage: https://pillow.readthedocs.org/]==])
whatis([==[URL: https://pillow.readthedocs.org/]==])

local root = "/app/software/Pillow/9.4.0-GCCcore-12.2.0"

conflict("Pillow")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("libjpeg-turbo/2.1.4-GCCcore-12.2.0") ) then
    load("libjpeg-turbo/2.1.4-GCCcore-12.2.0")
end

if not ( isloaded("libpng/1.6.38-GCCcore-12.2.0") ) then
    load("libpng/1.6.38-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("LibTIFF/4.4.0-GCCcore-12.2.0") ) then
    load("LibTIFF/4.4.0-GCCcore-12.2.0")
end

if not ( isloaded("freetype/2.12.1-GCCcore-12.2.0") ) then
    load("freetype/2.12.1-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPILLOW", root)
setenv("EBVERSIONPILLOW", "9.4.0")
setenv("EBDEVELPILLOW", pathJoin(root, "logs/Pillow-9.4.0-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.2
