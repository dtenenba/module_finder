help([==[

Description
===========
Geekbench 5 is a cross-platform benchmark that measures your system's performance 
with the press of a button.


More information
================
 - Homepage: https://Geekbench.com
]==])

whatis([==[Description: Geekbench 5 is a cross-platform benchmark that measures your system's performance 
with the press of a button.]==])
whatis([==[Homepage: https://Geekbench.com]==])
whatis([==[URL: https://Geekbench.com]==])

local root = "/app/software/Geekbench/5.4.1"

conflict("Geekbench")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGEEKBENCH", root)
setenv("EBVERSIONGEEKBENCH", "5.4.1")
setenv("EBDEVELGEEKBENCH", pathJoin(root, "logs/Geekbench-5.4.1-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.4
