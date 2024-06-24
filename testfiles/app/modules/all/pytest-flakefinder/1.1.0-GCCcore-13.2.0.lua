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

local root = "/app/software/pytest-flakefinder/1.1.0-GCCcore-13.2.0"

conflict("pytest-flakefinder")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.10-GCCcore-13.2.0") ) then
    load("Python-bundle-PyPI/2023.10-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYTESTMINFLAKEFINDER", root)
setenv("EBVERSIONPYTESTMINFLAKEFINDER", "1.1.0")
setenv("EBDEVELPYTESTMINFLAKEFINDER", pathJoin(root, "logs/pytest-flakefinder-1.1.0-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
