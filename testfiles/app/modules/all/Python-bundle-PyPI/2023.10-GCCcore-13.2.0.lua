help([==[

Description
===========
Bundle of Python packages from PyPI


More information
================
 - Homepage: https://python.org/


]==])

whatis([==[Description: Bundle of Python packages from PyPI]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])

local root = "/app/software/Python-bundle-PyPI/2023.10-GCCcore-13.2.0"

conflict("Python-bundle-PyPI")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("cryptography/41.0.5-GCCcore-13.2.0") ) then
    load("cryptography/41.0.5-GCCcore-13.2.0")
end

if not ( isloaded("virtualenv/20.24.6-GCCcore-13.2.0") ) then
    load("virtualenv/20.24.6-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTHONMINBUNDLEMINPYPI", root)
setenv("EBVERSIONPYTHONMINBUNDLEMINPYPI", "2023.10")
setenv("EBDEVELPYTHONMINBUNDLEMINPYPI", pathJoin(root, "logs/Python-bundle-PyPI-2023.10-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
