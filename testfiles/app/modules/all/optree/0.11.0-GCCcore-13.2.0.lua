help([==[

Description
===========
Optimized PyTree Utilities


More information
================
 - Homepage: https://optree.readthedocs.io/en/latest/
]==])

whatis([==[Description: Optimized PyTree Utilities]==])
whatis([==[Homepage: https://optree.readthedocs.io/en/latest/]==])
whatis([==[URL: https://optree.readthedocs.io/en/latest/]==])

local root = "/app/software/optree/0.11.0-GCCcore-13.2.0"

conflict("optree")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("typing-extensions/4.10.0-GCCcore-13.2.0") ) then
    load("typing-extensions/4.10.0-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTOPTREE", root)
setenv("EBVERSIONOPTREE", "0.11.0")
setenv("EBDEVELOPTREE", pathJoin(root, "logs/optree-0.11.0-GCCcore-13.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
