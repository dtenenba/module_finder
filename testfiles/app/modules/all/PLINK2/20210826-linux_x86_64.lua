help([==[

Description
===========
PLINK is a free, open-source whole genome association analysis toolset, designed to
 perform a range of basic, large-scale analyses in a computationally efficient manner.
 The focus of PLINK is purely on analysis of genotype/phenotype data.


More information
================
 - Homepage: https://www.cog-genomics.org/plink/2.0
]==])

whatis([==[Description: PLINK is a free, open-source whole genome association analysis toolset, designed to
 perform a range of basic, large-scale analyses in a computationally efficient manner.
 The focus of PLINK is purely on analysis of genotype/phenotype data.]==])
whatis([==[Homepage: https://www.cog-genomics.org/plink/2.0]==])
whatis([==[URL: https://www.cog-genomics.org/plink/2.0]==])

local root = "/app/software/PLINK2/20210826-linux_x86_64"

conflict("PLINK2")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPLINK2", root)
setenv("EBVERSIONPLINK2", "20210826")
setenv("EBDEVELPLINK2", pathJoin(root, "logs/PLINK2-20210826-linux_x86_64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.3.4
