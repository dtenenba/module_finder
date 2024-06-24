help([==[

Description
===========
gh is GitHub on the command line.


More information
================
 - Homepage: https://github.com/cli/cli
]==])

whatis([==[Description: gh is GitHub on the command line.]==])
whatis([==[Homepage: https://github.com/cli/cli]==])
whatis([==[URL: https://github.com/cli/cli]==])

local root = "/app/software/gh/2.14.7"

conflict("gh")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGH", root)
setenv("EBVERSIONGH", "2.14.7")
setenv("EBDEVELGH", pathJoin(root, "logs/gh-2.14.7-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
