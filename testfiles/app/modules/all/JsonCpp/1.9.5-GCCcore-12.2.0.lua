help([==[

Description
===========
JsonCpp is a C++ library that allows manipulating JSON values,
 including serialization and deserialization to and from strings. It can also preserve existing comment in
 unserialization/serialization steps, making it a convenient format to store user input files.


More information
================
 - Homepage: https://open-source-parsers.github.io/jsoncpp-docs/doxygen/index.html
]==])

whatis([==[Description:  JsonCpp is a C++ library that allows manipulating JSON values,
 including serialization and deserialization to and from strings. It can also preserve existing comment in
 unserialization/serialization steps, making it a convenient format to store user input files. ]==])
whatis([==[Homepage: https://open-source-parsers.github.io/jsoncpp-docs/doxygen/index.html]==])
whatis([==[URL: https://open-source-parsers.github.io/jsoncpp-docs/doxygen/index.html]==])

local root = "/app/software/JsonCpp/1.9.5-GCCcore-12.2.0"

conflict("JsonCpp")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTJSONCPP", root)
setenv("EBVERSIONJSONCPP", "1.9.5")
setenv("EBDEVELJSONCPP", pathJoin(root, "logs/JsonCpp-1.9.5-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
