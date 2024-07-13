help([==[

Description
===========
help2man produces simple manual pages from the '--help' and '--version'
 output of other commands.


More information
================
 - Homepage: https://www.gnu.org/software/help2man/
]==])

whatis([==[Description: 
 help2man produces simple manual pages from the '--help' and '--version'
 output of other commands.
]==])
whatis([==[Homepage: https://www.gnu.org/software/help2man/]==])

local root = "/app/software/help2man/1.47.4"

conflict("help2man")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHELP2MAN", root)
setenv("EBVERSIONHELP2MAN", "1.47.4")
setenv("EBDEVELHELP2MAN", pathJoin(root, "/app/logs/help2man-1.47.4-easybuild-devel"))

-- Built with EasyBuild version 3.7.1