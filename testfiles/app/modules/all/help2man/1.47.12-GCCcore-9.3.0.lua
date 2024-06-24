help([==[

Description
===========
help2man produces simple manual pages from the '--help' and '--version' output of other commands.


More information
================
 - Homepage: https://www.gnu.org/software/help2man/
]==])

whatis([==[Description: help2man produces simple manual pages from the '--help' and '--version' output of other commands.]==])
whatis([==[Homepage: https://www.gnu.org/software/help2man/]==])
whatis([==[URL: https://www.gnu.org/software/help2man/]==])

local root = "/app/software/help2man/1.47.12-GCCcore-9.3.0"

conflict("help2man")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHELP2MAN", root)
setenv("EBVERSIONHELP2MAN", "1.47.12")
setenv("EBDEVELHELP2MAN", pathJoin(root, "logs/help2man-1.47.12-GCCcore-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
