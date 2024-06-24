help([==[

Description
===========
Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.


More information
================
 - Homepage: https://github.com/uploadcare/pillow-simd
]==])

whatis([==[Description: Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.]==])
whatis([==[Homepage: https://github.com/uploadcare/pillow-simd]==])
whatis([==[URL: https://github.com/uploadcare/pillow-simd]==])

local root = "/app/software/Pillow-SIMD/9.2.0-GCCcore-11.3.0"

conflict("Pillow-SIMD")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.3-GCCcore-11.3.0") ) then
    load("libjpeg-turbo/2.1.3-GCCcore-11.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.3.0") ) then
    load("libpng/1.6.37-GCCcore-11.3.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-11.3.0") ) then
    load("zlib/1.2.12-GCCcore-11.3.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.3.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.3.0")
end

if not ( isloaded("freetype/2.12.1-GCCcore-11.3.0") ) then
    load("freetype/2.12.1-GCCcore-11.3.0")
end

if not ( isloaded("libwebp/1.2.4-GCCcore-11.3.0") ) then
    load("libwebp/1.2.4-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPILLOWMINSIMD", root)
setenv("EBVERSIONPILLOWMINSIMD", "9.2.0")
setenv("EBDEVELPILLOWMINSIMD", pathJoin(root, "logs/Pillow-SIMD-9.2.0-GCCcore-11.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
