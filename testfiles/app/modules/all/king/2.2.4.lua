help([==[

Description
===========
KING is a toolset that makes use of high-throughput 
SNP data typically seen in a genome-wide association study (GWAS) or 
a sequencing project. Applications of KING include family relationship 
inference and pedigree error checking, quality control, population 
substructure identification, forensics, gene mapping, etc.


More information
================
 - Homepage: https://people.virginia.edu/~wc9c/KING/
]==])

whatis([==[Description: KING is a toolset that makes use of high-throughput 
SNP data typically seen in a genome-wide association study (GWAS) or 
a sequencing project. Applications of KING include family relationship 
inference and pedigree error checking, quality control, population 
substructure identification, forensics, gene mapping, etc.]==])
whatis([==[Homepage: https://people.virginia.edu/~wc9c/KING/]==])
whatis([==[URL: https://people.virginia.edu/~wc9c/KING/]==])

local root = "/app/software/king/2.2.4"

conflict("king")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKING", root)
setenv("EBVERSIONKING", "2.2.4")
setenv("EBDEVELKING", pathJoin(root, "logs/king-2.2.4-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
