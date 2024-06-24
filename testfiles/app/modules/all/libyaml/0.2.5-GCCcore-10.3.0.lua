help([==[

Description
===========
LibYAML is a YAML parser and emitter written in C.


More information
================
 - Homepage: https://pyyaml.org/wiki/LibYAML
]==])

whatis([==[Description: LibYAML is a YAML parser and emitter written in C.]==])
whatis([==[Homepage: https://pyyaml.org/wiki/LibYAML]==])
whatis([==[URL: https://pyyaml.org/wiki/LibYAML]==])

local root = "/app/software/libyaml/0.2.5-GCCcore-10.3.0"

conflict("libyaml")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBYAML", root)
setenv("EBVERSIONLIBYAML", "0.2.5")
setenv("EBDEVELLIBYAML", pathJoin(root, "logs/libyaml-0.2.5-GCCcore-10.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
