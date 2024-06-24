help([==[

Description
===========
Easily download, build, install, upgrade, and uninstall Python packages


More information
================
 - Homepage: https://pypi.org/project/setuptools
]==])

whatis([==[Description: Easily download, build, install, upgrade, and uninstall Python packages]==])
whatis([==[Homepage: https://pypi.org/project/setuptools]==])
whatis([==[URL: https://pypi.org/project/setuptools]==])

local root = "/app/software/setuptools/69.5.1-GCCcore-12.3.0"

conflict("setuptools")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSETUPTOOLS", root)
setenv("EBVERSIONSETUPTOOLS", "69.5.1")
setenv("EBDEVELSETUPTOOLS", pathJoin(root, "logs/setuptools-69.5.1-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
