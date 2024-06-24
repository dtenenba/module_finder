help([==[

Description
===========
PLINK2 is a free, open-source whole genome association analysis toolset, designed to
 perform a range of basic, large-scale analyses in a computationally efficient manner.
 The focus of PLINK2 is purely on analysis of genotype/phenotype data.


More information
================
 - Homepage: https://www.cog-genomics.org/plink/2.0
]==])

whatis([==[Description: PLINK2 is a free, open-source whole genome association analysis toolset, designed to
 perform a range of basic, large-scale analyses in a computationally efficient manner.
 The focus of PLINK2 is purely on analysis of genotype/phenotype data.]==])
whatis([==[Homepage: https://www.cog-genomics.org/plink/2.0]==])
whatis([==[URL: https://www.cog-genomics.org/plink/2.0]==])

local root = "/app/software/PLINK2/20240205_linux_avx2"

conflict("PLINK2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPLINK2", root)
setenv("EBVERSIONPLINK2", "20240205_linux_avx2")
setenv("EBDEVELPLINK2", pathJoin(root, "logs/PLINK2-20240205_linux_avx2-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.9.0
