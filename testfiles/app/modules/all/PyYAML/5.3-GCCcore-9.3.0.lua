help([==[

Description
===========
PyYAML is a YAML parser and emitter for the Python programming language.


More information
================
 - Homepage: https://github.com/yaml/pyyaml


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.8.2-GCCcore-9.3.0 (default), Python/2.7.18-GCCcore-9.3.0
]==])

whatis([==[Description: PyYAML is a YAML parser and emitter for the Python programming language.]==])
whatis([==[Homepage: https://github.com/yaml/pyyaml]==])
whatis([==[URL: https://github.com/yaml/pyyaml]==])
whatis([==[Compatible modules: Python/3.8.2-GCCcore-9.3.0 (default), Python/2.7.18-GCCcore-9.3.0]==])

local root = "/app/software/PyYAML/5.3-GCCcore-9.3.0"

conflict("PyYAML")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("libyaml/0.2.2-GCCcore-9.3.0") ) then
    load("libyaml/0.2.2-GCCcore-9.3.0")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) and not ( isloaded("Python/2.7.18-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYYAML", root)
setenv("EBVERSIONPYYAML", "5.3")
setenv("EBDEVELPYYAML", pathJoin(root, "logs/PyYAML-5.3-GCCcore-9.3.0-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.2.2
