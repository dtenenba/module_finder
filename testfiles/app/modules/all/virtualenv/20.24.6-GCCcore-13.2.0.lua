help([==[

Description
===========
A tool for creating isolated virtual python environments.


More information
================
 - Homepage: https://github.com/pypa/virtualenv


Included extensions
===================
distlib-0.3.7, filelock-3.13.0, platformdirs-3.11.0, virtualenv-20.24.6
]==])

whatis([==[Description: A tool for creating isolated virtual python environments.]==])
whatis([==[Homepage: https://github.com/pypa/virtualenv]==])
whatis([==[URL: https://github.com/pypa/virtualenv]==])
whatis([==[Extensions: distlib-0.3.7, filelock-3.13.0, platformdirs-3.11.0, virtualenv-20.24.6]==])

local root = "/app/software/virtualenv/20.24.6-GCCcore-13.2.0"

conflict("virtualenv")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVIRTUALENV", root)
setenv("EBVERSIONVIRTUALENV", "20.24.6")
setenv("EBDEVELVIRTUALENV", pathJoin(root, "logs/virtualenv-20.24.6-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTVIRTUALENV", "distlib-0.3.7,filelock-3.13.0,platformdirs-3.11.0,virtualenv-20.24.6")
