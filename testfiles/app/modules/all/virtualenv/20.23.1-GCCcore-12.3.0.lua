help([==[

Description
===========
A tool for creating isolated virtual python environments.


More information
================
 - Homepage: https://github.com/pypa/virtualenv


Included extensions
===================
distlib-0.3.6, filelock-3.12.2, platformdirs-3.8.0, virtualenv-20.23.1
]==])

whatis([==[Description: A tool for creating isolated virtual python environments.]==])
whatis([==[Homepage: https://github.com/pypa/virtualenv]==])
whatis([==[URL: https://github.com/pypa/virtualenv]==])
whatis([==[Extensions: distlib-0.3.6, filelock-3.12.2, platformdirs-3.8.0, virtualenv-20.23.1]==])

local root = "/app/software/virtualenv/20.23.1-GCCcore-12.3.0"

conflict("virtualenv")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVIRTUALENV", root)
setenv("EBVERSIONVIRTUALENV", "20.23.1")
setenv("EBDEVELVIRTUALENV", pathJoin(root, "logs/virtualenv-20.23.1-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTVIRTUALENV", "distlib-0.3.6,filelock-3.12.2,platformdirs-3.8.0,virtualenv-20.23.1")
