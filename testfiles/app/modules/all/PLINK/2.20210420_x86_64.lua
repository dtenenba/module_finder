help([==[

Description
===========
Whole-genome association analysis toolset


More information
================
 - Homepage: https://www.cog-genomics.org/plink/2.0/
]==])

whatis([==[Description: Whole-genome association analysis toolset]==])
whatis([==[Homepage: https://www.cog-genomics.org/plink/2.0/]==])
whatis([==[URL: https://www.cog-genomics.org/plink/2.0/]==])

local root = "/app/software/PLINK/2.20210420_x86_64"

conflict("PLINK")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPLINK", root)
setenv("EBVERSIONPLINK", "2.20210420_x86_64")
setenv("EBDEVELPLINK", pathJoin(root, "logs/PLINK-2.20210420_x86_64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.3
