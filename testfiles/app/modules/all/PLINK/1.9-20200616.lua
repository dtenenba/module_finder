help([==[

Description
===========
Whole-genome association analysis toolset


More information
================
 - Homepage: https://www.cog-genomics.org/plink/1.9
]==])

whatis([==[Description: Whole-genome association analysis toolset]==])
whatis([==[Homepage: https://www.cog-genomics.org/plink/1.9]==])
whatis([==[URL: https://www.cog-genomics.org/plink/1.9]==])

local root = "/app/software/plink/1.9-20200616"

conflict("plink")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPLINK", root)
setenv("EBVERSIONPLINK", "1.9-20200616")
setenv("EBDEVELPLINK", pathJoin(root, "logs/plink-1.9-20200616-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
