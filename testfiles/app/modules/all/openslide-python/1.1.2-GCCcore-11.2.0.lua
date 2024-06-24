help([==[

Description
===========
OpenSlide Python is a Python interface to the OpenSlide library.


More information
================
 - Homepage: https://github.com/openslide/openslide-python
]==])

whatis([==[Description: OpenSlide Python is a Python interface to the OpenSlide library.]==])
whatis([==[Homepage: https://github.com/openslide/openslide-python]==])
whatis([==[URL: https://github.com/openslide/openslide-python]==])

local root = "/app/software/openslide-python/1.1.2-GCCcore-11.2.0"

conflict("openslide-python")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("OpenSlide/3.4.1-GCCcore-11.2.0") ) then
    load("OpenSlide/3.4.1-GCCcore-11.2.0")
end

if not ( isloaded("Pillow/8.3.2-GCCcore-11.2.0") ) then
    load("Pillow/8.3.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTOPENSLIDEMINPYTHON", root)
setenv("EBVERSIONOPENSLIDEMINPYTHON", "1.1.2")
setenv("EBDEVELOPENSLIDEMINPYTHON", pathJoin(root, "logs/openslide-python-1.1.2-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.1
