help([==[

Description
===========
Easel supports computational analysis of biological sequences using probabilistic models.


More information
================
 - Homepage: https://www.wxwidgets.org
]==])

whatis([==[Description: Easel supports computational analysis of biological sequences using probabilistic models.]==])
whatis([==[Homepage: https://www.wxwidgets.org]==])
whatis([==[URL: https://www.wxwidgets.org]==])

local root = "/app/software/easel/0.48-GCC-12.2.0"

conflict("easel")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEASEL", root)
setenv("EBVERSIONEASEL", "0.48")
setenv("EBDEVELEASEL", pathJoin(root, "logs/easel-0.48-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
