help([==[

Description
===========
Python build backend (PEP 517) for Meson projects


More information
================
 - Homepage: https://github.com/mesonbuild/meson-python


Included extensions
===================
meson-python-0.11.0, pyproject-metadata-0.6.1
]==])

whatis([==[Description: Python build backend (PEP 517) for Meson projects]==])
whatis([==[Homepage: https://github.com/mesonbuild/meson-python]==])
whatis([==[URL: https://github.com/mesonbuild/meson-python]==])
whatis([==[Extensions: meson-python-0.11.0, pyproject-metadata-0.6.1]==])

local root = "/app/software/meson-python/0.11.0-GCCcore-12.2.0"

conflict("meson-python")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("Meson/0.64.0-GCCcore-12.2.0") ) then
    load("Meson/0.64.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMESONMINPYTHON", root)
setenv("EBVERSIONMESONMINPYTHON", "0.11.0")
setenv("EBDEVELMESONMINPYTHON", pathJoin(root, "logs/meson-python-0.11.0-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTMESONMINPYTHON", "pyproject-metadata-0.6.1,meson-python-0.11.0")
