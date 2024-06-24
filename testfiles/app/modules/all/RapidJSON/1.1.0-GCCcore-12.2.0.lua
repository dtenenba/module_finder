help([==[

Description
===========
A fast JSON parser/generator for C++ with both SAX/DOM style API


More information
================
 - Homepage: https://rapidjson.org
]==])

whatis([==[Description: A fast JSON parser/generator for C++ with both SAX/DOM style API]==])
whatis([==[Homepage: https://rapidjson.org]==])
whatis([==[URL: https://rapidjson.org]==])

local root = "/app/software/RapidJSON/1.1.0-GCCcore-12.2.0"

conflict("RapidJSON")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTRAPIDJSON", root)
setenv("EBVERSIONRAPIDJSON", "1.1.0")
setenv("EBDEVELRAPIDJSON", pathJoin(root, "logs/RapidJSON-1.1.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
