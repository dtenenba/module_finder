help([==[

Description
===========
Runs tests multiple times to expose flakiness.


More information
================
 - Homepage: https://github.com/dropbox/pytest-flakefinder
]==])

whatis([==[Description: Runs tests multiple times to expose flakiness.]==])
whatis([==[Homepage: https://github.com/dropbox/pytest-flakefinder]==])
whatis([==[URL: https://github.com/dropbox/pytest-flakefinder]==])

local root = "/app/software/pytest-flakefinder/1.1.0-GCCcore-12.3.0"

conflict("pytest-flakefinder")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYTESTMINFLAKEFINDER", root)
setenv("EBVERSIONPYTESTMINFLAKEFINDER", "1.1.0")
setenv("EBDEVELPYTESTMINFLAKEFINDER", pathJoin(root, "logs/pytest-flakefinder-1.1.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
