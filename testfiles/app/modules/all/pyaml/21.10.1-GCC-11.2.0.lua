help([==[

Description
===========
PyYAML-based python module to produce pretty and readable YAML-serialized data.
This module is for serialization only, see ruamel.yaml module for literate YAML
parsing (keeping track of comments, spacing, line/column numbers of values, etc).


More information
================
 - Homepage: https://github.com/mk-fg/pretty-yaml
]==])

whatis([==[Description: PyYAML-based python module to produce pretty and readable YAML-serialized data.
This module is for serialization only, see ruamel.yaml module for literate YAML
parsing (keeping track of comments, spacing, line/column numbers of values, etc).]==])
whatis([==[Homepage: https://github.com/mk-fg/pretty-yaml]==])
whatis([==[URL: https://github.com/mk-fg/pretty-yaml]==])

local root = "/app/software/pyaml/21.10.1-GCC-11.2.0"

conflict("pyaml")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("PyYAML/5.4.1-GCCcore-11.2.0") ) then
    load("PyYAML/5.4.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYAML", root)
setenv("EBVERSIONPYAML", "21.10.1")
setenv("EBDEVELPYAML", pathJoin(root, "logs/pyaml-21.10.1-GCC-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
