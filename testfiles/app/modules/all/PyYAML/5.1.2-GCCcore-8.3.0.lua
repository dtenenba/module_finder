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

local root = "/app/software/PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4"

conflict("PyYAML")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("libyaml/0.2.2-GCCcore-8.3.0") ) then
    load("libyaml/0.2.2-GCCcore-8.3.0")
end

setenv("EBROOTPYYAML", root)
setenv("EBVERSIONPYYAML", "5.1.2")
setenv("EBDEVELPYYAML", pathJoin(root, "logs/PyYAML-5.1.2-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
