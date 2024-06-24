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

local root = "/app/software/setuptools/64.0.3-GCCcore-12.2.0"

conflict("setuptools")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSETUPTOOLS", root)
setenv("EBVERSIONSETUPTOOLS", "64.0.3")
setenv("EBDEVELSETUPTOOLS", pathJoin(root, "logs/setuptools-64.0.3-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
