help([==[

Description
===========
Go is an open source programming language that makes it easy to build
 simple, reliable, and efficient software.


More information
================
 - Homepage: https://www.golang.org
]==])

whatis([==[Description: Go is an open source programming language that makes it easy to build
 simple, reliable, and efficient software.]==])
whatis([==[Homepage: https://www.golang.org]==])
whatis([==[URL: https://www.golang.org]==])

local root = "/app/software/Go/1.16.6"

conflict("Go")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGO", root)
setenv("EBVERSIONGO", "1.16.6")
setenv("EBDEVELGO", pathJoin(root, "logs/Go-1.16.6-easybuild-devel"))

setenv("GOROOT", "/app/software/Go/1.16.6")
-- Built with EasyBuild version 4.5.0
