help([==[

Description
===========
Tandem repeats finder: a program to analyze DNA sequences. Legacy version.


More information
================
 - Homepage: https://tandem.bu.edu/trf/trf.html
]==])

whatis([==[Description: Tandem repeats finder: a program to analyze DNA sequences. Legacy version.]==])
whatis([==[Homepage: https://tandem.bu.edu/trf/trf.html]==])

local root = "/app/software/TRF/4.09-linux64"

conflict("TRF")

setenv("EBROOTTRF", root)
setenv("EBVERSIONTRF", "4.09")
setenv("EBDEVELTRF", pathJoin(root, "/app/logs/TRF-4.09-linux64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.8.1
