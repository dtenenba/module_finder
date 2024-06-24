help([==[

Description
===========
ruamel.yaml is a YAML 1.2 loader/dumper package for Python.


More information
================
 - Homepage: https://sourceforge.net/projects/ruamel-yaml


Included extensions
===================
configobj-5.0.6, ruamel.yaml-0.17.21, ruamel.yaml.base-0.3.0,
ruamel.yaml.clib-0.2.6, ruamel.yaml.cmd-0.5.10, ruamel.yaml.convert-0.3.2
]==])

whatis([==[Description: ruamel.yaml is a YAML 1.2 loader/dumper package for Python.]==])
whatis([==[Homepage: https://sourceforge.net/projects/ruamel-yaml]==])
whatis([==[URL: https://sourceforge.net/projects/ruamel-yaml]==])
whatis([==[Extensions: configobj-5.0.6, ruamel.yaml-0.17.21, ruamel.yaml.base-0.3.0, ruamel.yaml.clib-0.2.6, ruamel.yaml.cmd-0.5.10, ruamel.yaml.convert-0.3.2]==])

local root = "/app/software/ruamel.yaml/0.17.21-GCCcore-11.2.0"

conflict("ruamel.yaml")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRUAMELYAML", root)
setenv("EBVERSIONRUAMELYAML", "0.17.21")
setenv("EBDEVELRUAMELYAML", pathJoin(root, "logs/ruamel.yaml-0.17.21-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTRUAMELYAML", "ruamel.yaml.clib-0.2.6,ruamel.yaml-0.17.21,configobj-5.0.6,ruamel.yaml.base-0.3.0,ruamel.yaml.convert-0.3.2,ruamel.yaml.cmd-0.5.10")
