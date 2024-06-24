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

local root = "/app/software/Pillow/7.0.0-GCCcore-9.3.0-Python-3.8.2"

conflict("Pillow")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.4-GCCcore-9.3.0") ) then
    load("libjpeg-turbo/2.0.4-GCCcore-9.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-9.3.0") ) then
    load("libpng/1.6.37-GCCcore-9.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-9.3.0") ) then
    load("zlib/1.2.11-GCCcore-9.3.0")
end

if not ( isloaded("LibTIFF/4.1.0-GCCcore-9.3.0") ) then
    load("LibTIFF/4.1.0-GCCcore-9.3.0")
end

if not ( isloaded("freetype/2.10.1-GCCcore-9.3.0") ) then
    load("freetype/2.10.1-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPILLOW", root)
setenv("EBVERSIONPILLOW", "7.0.0")
setenv("EBDEVELPILLOW", pathJoin(root, "logs/Pillow-7.0.0-GCCcore-9.3.0-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.1
