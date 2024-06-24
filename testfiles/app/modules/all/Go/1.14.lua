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
whatis([==[URL: http://www.golang.org]==])

local root = "/app/software/Go/1.14"

conflict("Go")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGO", root)
setenv("EBVERSIONGO", "1.14")
setenv("EBDEVELGO", pathJoin(root, "logs/Go-1.14-easybuild-devel"))

setenv("GOROOT", "/app/software/Go/1.14")
-- Built with EasyBuild version 4.1.2
