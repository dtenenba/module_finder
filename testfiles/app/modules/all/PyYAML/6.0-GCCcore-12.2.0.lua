help([==[

Description
===========
PyYAML is a YAML parser and emitter for the Python programming language.


More information
================
 - Homepage: https://github.com/yaml/pyyaml
]==])

whatis([==[Description: PyYAML is a YAML parser and emitter for the Python programming language.]==])
whatis([==[Homepage: https://github.com/yaml/pyyaml]==])
whatis([==[URL: https://github.com/yaml/pyyaml]==])

local root = "/app/software/PyYAML/6.0-GCCcore-12.2.0"

conflict("PyYAML")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("libyaml/0.2.5-GCCcore-12.2.0") ) then
    load("libyaml/0.2.5-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYYAML", root)
setenv("EBVERSIONPYYAML", "6.0")
setenv("EBDEVELPYYAML", pathJoin(root, "logs/PyYAML-6.0-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.2
