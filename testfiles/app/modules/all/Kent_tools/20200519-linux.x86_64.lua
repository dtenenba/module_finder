help([==[

Description
===========
Jim Kent's tools: collection of tools used by the UCSC genome browser.


More information
================
 - Homepage: http://genome.cse.ucsc.edu/
]==])

whatis([==[Description: Jim Kent's tools: collection of tools used by the UCSC genome browser.]==])
whatis([==[Homepage: http://genome.cse.ucsc.edu/]==])
whatis([==[URL: http://genome.cse.ucsc.edu/]==])

local root = "/app/software/Kent_tools/20200519-linux.x86_64"

conflict("Kent_tools")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKENT_TOOLS", root)
setenv("EBVERSIONKENT_TOOLS", "20200519")
setenv("EBDEVELKENT_TOOLS", pathJoin(root, "logs/Kent_tools-20200519-linux.x86_64-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
