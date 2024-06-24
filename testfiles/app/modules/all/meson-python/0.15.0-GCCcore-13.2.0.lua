help([==[

Description
===========
Python build backend (PEP 517) for Meson projects


More information
================
 - Homepage: https://github.com/mesonbuild/meson-python


Included extensions
===================
meson-python-0.15.0, pyproject-metadata-0.7.1
]==])

whatis([==[Description: Python build backend (PEP 517) for Meson projects]==])
whatis([==[Homepage: https://github.com/mesonbuild/meson-python]==])
whatis([==[URL: https://github.com/mesonbuild/meson-python]==])
whatis([==[Extensions: meson-python-0.15.0, pyproject-metadata-0.7.1]==])

local root = "/app/software/meson-python/0.15.0-GCCcore-13.2.0"

conflict("meson-python")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.10-GCCcore-13.2.0") ) then
    load("Python-bundle-PyPI/2023.10-GCCcore-13.2.0")
end

if not ( isloaded("Meson/1.2.3-GCCcore-13.2.0") ) then
    load("Meson/1.2.3-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMESONMINPYTHON", root)
setenv("EBVERSIONMESONMINPYTHON", "0.15.0")
setenv("EBDEVELMESONMINPYTHON", pathJoin(root, "logs/meson-python-0.15.0-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTMESONMINPYTHON", "pyproject-metadata-0.7.1,meson-python-0.15.0")
