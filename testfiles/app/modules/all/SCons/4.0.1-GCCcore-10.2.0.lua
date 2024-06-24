help([==[

Description
===========
SCons is a software construction tool.


More information
================
 - Homepage: https://www.scons.org/
]==])

whatis([==[Description: SCons is a software construction tool.]==])
whatis([==[Homepage: https://www.scons.org/]==])
whatis([==[URL: https://www.scons.org/]==])

local root = "/app/software/SCons/4.0.1-GCCcore-10.2.0"

conflict("SCons")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCONS", root)
setenv("EBVERSIONSCONS", "4.0.1")
setenv("EBDEVELSCONS", pathJoin(root, "logs/SCons-4.0.1-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
