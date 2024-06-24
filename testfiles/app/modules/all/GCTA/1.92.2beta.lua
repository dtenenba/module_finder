help([==[

Description
===========
GCTA (Genome-wide Complex Trait Analysis) was originally designed to
 estimate the proportion of phenotypic variance explained by all genome-wide SNPs for
 complex traits (the GREML method), and has subsequently extended for many other analyses
 to better understand the genetic architecture of complex traits.


More information
================
 - Homepage: https://cnsgenomics.com/software/gcta
]==])

whatis([==[Description: GCTA (Genome-wide Complex Trait Analysis) was originally designed to
 estimate the proportion of phenotypic variance explained by all genome-wide SNPs for
 complex traits (the GREML method), and has subsequently extended for many other analyses
 to better understand the genetic architecture of complex traits.]==])
whatis([==[Homepage: https://cnsgenomics.com/software/gcta]==])

local root = "/app/software/GCTA/1.92.2beta"

conflict("GCTA")

setenv("EBROOTGCTA", root)
setenv("EBVERSIONGCTA", "1.92.2")
setenv("EBDEVELGCTA", pathJoin(root, "/app/logs/GCTA-1.92.2beta-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.9.0
