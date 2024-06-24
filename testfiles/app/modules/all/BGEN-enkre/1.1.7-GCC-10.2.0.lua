help([==[

Description
===========
This repository contains a reference implementation
 of the BGEN format, written in C++. The library can be used as the
 basis for BGEN support in other software, or as a reference for
 developers writing their own implementations of the BGEN format.
 Please cite:
 Band, G. and Marchini, J., "BGEN: a binary file format for imputed genotype and haplotype data", 
 bioArxiv 308296; doi: https://doi.org/10.1101/308296


More information
================
 - Homepage: https://enkre.net/cgi-bin/code/bgen/dir?ci=trunk
]==])

whatis([==[Description: This repository contains a reference implementation
 of the BGEN format, written in C++. The library can be used as the
 basis for BGEN support in other software, or as a reference for
 developers writing their own implementations of the BGEN format.
 Please cite:
 Band, G. and Marchini, J., "BGEN: a binary file format for imputed genotype and haplotype data", 
 bioArxiv 308296; doi: https://doi.org/10.1101/308296
]==])
whatis([==[Homepage: https://enkre.net/cgi-bin/code/bgen/dir?ci=trunk]==])
whatis([==[URL: https://enkre.net/cgi-bin/code/bgen/dir?ci=trunk]==])

local root = "/app/software/BGEN-enkre/1.1.7-GCC-10.2.0"

conflict("BGEN-enkre")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBGENMINENKRE", root)
setenv("EBVERSIONBGENMINENKRE", "")
setenv("EBDEVELBGENMINENKRE", pathJoin(root, "logs/BGEN-enkre--GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
