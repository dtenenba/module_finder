help([==[

Description
===========
A tool for converting XML files to various formats


More information
================
 - Homepage: https://www.pagure.io/xmlto
]==])

whatis([==[Description: A tool for converting XML files to various formats]==])
whatis([==[Homepage: https://www.pagure.io/xmlto]==])
whatis([==[URL: https://www.pagure.io/xmlto]==])

local root = "/app/software/xmlto/0.0.28-GCC-11.2.0"

conflict("xmlto")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXMLTO", root)
setenv("EBVERSIONXMLTO", "0.0.28")
setenv("EBDEVELXMLTO", pathJoin(root, "logs/xmlto-0.0.28-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
