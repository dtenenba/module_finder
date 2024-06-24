help([==[

Description
===========
SCons is a software construction tool.


More information
================
 - Homepage: https://www.scons.org/


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.7.4-GCCcore-8.3.0 (default), Python/2.7.16-GCCcore-8.3.0
]==])

whatis([==[Description: SCons is a software construction tool.]==])
whatis([==[Homepage: https://www.scons.org/]==])
whatis([==[URL: https://www.scons.org/]==])
whatis([==[Compatible modules: Python/3.7.4-GCCcore-8.3.0 (default), Python/2.7.16-GCCcore-8.3.0]==])

local root = "/app/software/SCons/3.1.1-GCCcore-8.3.0"

conflict("SCons")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) and not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCONS", root)
setenv("EBVERSIONSCONS", "3.1.1")
setenv("EBDEVELSCONS", pathJoin(root, "logs/SCons-3.1.1-GCCcore-8.3.0-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.1.2
