help([==[

Description
===========
yaml-cpp is a YAML parser and emitter in C++ matching the YAML 1.2 spec


More information
================
 - Homepage: https://github.com/jbeder/yaml-cpp
]==])

whatis([==[Description: yaml-cpp is a YAML parser and emitter in C++ matching the YAML 1.2 spec]==])
whatis([==[Homepage: https://github.com/jbeder/yaml-cpp]==])
whatis([==[URL: https://github.com/jbeder/yaml-cpp]==])

local root = "/app/software/yaml-cpp/0.7.0-GCCcore-12.2.0"

conflict("yaml-cpp")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTYAMLMINCPP", root)
setenv("EBVERSIONYAMLMINCPP", "0.7.0")
setenv("EBDEVELYAMLMINCPP", pathJoin(root, "logs/yaml-cpp-0.7.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
