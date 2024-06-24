help([==[

Description
===========
iVar is a computational package that contains functions broadly useful for viral amplicon-based sequencing.


More information
================
 - Homepage: https://github.com/andersen-lab/ivar
]==])

whatis([==[Description: 
iVar is a computational package that contains functions broadly useful for viral amplicon-based sequencing.
]==])
whatis([==[Homepage: https://github.com/andersen-lab/ivar]==])
whatis([==[URL: https://github.com/andersen-lab/ivar]==])

local root = "/app/software/iVar/1.3.2-GCC-11.2.0"

conflict("iVar")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("HTSlib/1.14-GCC-11.2.0") ) then
    load("HTSlib/1.14-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTIVAR", root)
setenv("EBVERSIONIVAR", "1.3.2")
setenv("EBDEVELIVAR", pathJoin(root, "logs/iVar-1.3.2-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
