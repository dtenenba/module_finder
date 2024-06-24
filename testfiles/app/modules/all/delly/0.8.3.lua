help([==[

Description
===========
DELLY2: Structural variant discovery by integrated paired-end and split-read analysis


More information
================
 - Homepage: https://github.com/dellytools/delly
]==])

whatis([==[Description: DELLY2: Structural variant discovery by integrated paired-end and split-read analysis]==])
whatis([==[Homepage: https://github.com/dellytools/delly]==])
whatis([==[URL: https://github.com/dellytools/delly]==])

local root = "/app/software/delly/0.8.3"

conflict("delly")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTDELLY", root)
setenv("EBVERSIONDELLY", "0.8.3")
setenv("EBDEVELDELLY", pathJoin(root, "logs/delly-0.8.3-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[delly scripts are located in $EBROOTDELLY
]==])
end
prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
