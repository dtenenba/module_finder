help([==[

Description
===========
PyYAML is a YAML parser and emitter for the Python programming language.


More information
================
 - Homepage: https://pypi.python.org/pypi/PyYAML/
]==])

whatis([==[Description: PyYAML is a YAML parser and emitter for the Python programming language.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/PyYAML/]==])
whatis([==[URL: https://pypi.python.org/pypi/PyYAML/]==])

local root = "/app/software/PyYAML/5.1.2-GCC-8.3.0-Python-2.7.16"

conflict("PyYAML")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("libyaml/0.2.2-GCCcore-8.3.0") ) then
    load("libyaml/0.2.2-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYYAML", root)
setenv("EBVERSIONPYYAML", "5.1.2")
setenv("EBDEVELPYYAML", pathJoin(root, "logs/PyYAML-5.1.2-GCC-8.3.0-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.2
