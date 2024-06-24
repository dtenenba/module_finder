help([==[

Description
===========
Stack is a cross-platform program for developing Haskell projects.
It is intended for Haskellers both new and experienced.


More information
================
 - Homepage: https://docs.haskellstack.org
]==])

whatis([==[Description: Stack is a cross-platform program for developing Haskell projects.
It is intended for Haskellers both new and experienced.]==])
whatis([==[Homepage: https://docs.haskellstack.org]==])
whatis([==[URL: https://docs.haskellstack.org]==])

local root = "/app/software/Stack/2.3.3-x86_64"

conflict("Stack")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSTACK", root)
setenv("EBVERSIONSTACK", "2.3.3")
setenv("EBDEVELSTACK", pathJoin(root, "logs/Stack-2.3.3-x86_64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.6.2
