help([==[

Description
===========
pugixml is a light-weight C++ XML processing library


More information
================
 - Homepage: https://pugixml.org/
]==])

whatis([==[Description: pugixml is a light-weight C++ XML processing library]==])
whatis([==[Homepage: https://pugixml.org/]==])
whatis([==[URL: https://pugixml.org/]==])

local root = "/app/software/pugixml/1.12.1-GCCcore-11.2.0"

conflict("pugixml")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPUGIXML", root)
setenv("EBVERSIONPUGIXML", "1.12.1")
setenv("EBDEVELPUGIXML", pathJoin(root, "logs/pugixml-1.12.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
