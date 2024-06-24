help([==[

Description
===========
Whole-genome association analysis toolset


More information
================
 - Homepage: https://www.cog-genomics.org/plink/1.9/
]==])

whatis([==[Description: Whole-genome association analysis toolset]==])
whatis([==[Homepage: https://www.cog-genomics.org/plink/1.9/]==])

local root = "/app/software/PLINK/2.00-alpha1-x86_64"

conflict("PLINK")

setenv("EBROOTPLINK", root)
setenv("EBVERSIONPLINK", "2.00-alpha1-x86_64")
setenv("EBDEVELPLINK", pathJoin(root, "/app/logs/PLINK-2.00-alpha1-x86_64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.8.0
