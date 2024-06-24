help([==[

Description
===========
Go is an open source programming language that makes it easy to build
 simple, reliable, and efficient software.


More information
================
 - Homepage: http://www.golang.org
]==])

whatis([==[Description: Go is an open source programming language that makes it easy to build
 simple, reliable, and efficient software.]==])
whatis([==[Homepage: http://www.golang.org]==])

local root = "/app/software/Go/1.12"

conflict("Go")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGO", root)
setenv("EBVERSIONGO", "1.12")
setenv("EBDEVELGO", pathJoin(root, "/app/logs/Go-1.12-easybuild-devel"))

setenv("GOROOT", "/app/software/Go/1.12")
-- Built with EasyBuild version 3.9.0
