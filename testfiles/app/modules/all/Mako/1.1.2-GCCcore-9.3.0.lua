help([==[

Description
===========
A super-fast templating language that borrows the best ideas from the existing templating languages


More information
================
 - Homepage: https://www.makotemplates.org


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.8.2-GCCcore-9.3.0 (default), Python/2.7.18-GCCcore-9.3.0
]==])

whatis([==[Description: A super-fast templating language that borrows the best ideas from the existing templating languages]==])
whatis([==[Homepage: https://www.makotemplates.org]==])
whatis([==[URL: https://www.makotemplates.org]==])
whatis([==[Compatible modules: Python/3.8.2-GCCcore-9.3.0 (default), Python/2.7.18-GCCcore-9.3.0]==])

local root = "/app/software/Mako/1.1.2-GCCcore-9.3.0"

conflict("Mako")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) and not ( isloaded("Python/2.7.18-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAKO", root)
setenv("EBVERSIONMAKO", "1.1.2")
setenv("EBDEVELMAKO", pathJoin(root, "logs/Mako-1.1.2-GCCcore-9.3.0-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.2.2
