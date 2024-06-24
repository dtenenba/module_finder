help([==[

Description
===========
PIPseeker(TM) analyzes single-cell data obtained with Fluent BioSciences’ proprietary PIPseq™ 3ʹ Single
Cell RNA (scRNA-seq) Kits.


More information
================
 - Homepage: https://www.fluentbio.com/products/pipseeker-software-for-data-analysis/
]==])

whatis([==[Description: PIPseeker(TM) analyzes single-cell data obtained with Fluent BioSciences’ proprietary PIPseq™ 3ʹ Single
Cell RNA (scRNA-seq) Kits.]==])
whatis([==[Homepage: https://www.fluentbio.com/products/pipseeker-software-for-data-analysis/]==])
whatis([==[URL: https://www.fluentbio.com/products/pipseeker-software-for-data-analysis/]==])

local root = "/app/software/pipseeker/3.2.0"

conflict("pipseeker")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPIPSEEKER", root)
setenv("EBVERSIONPIPSEEKER", "3.2.0")
setenv("EBDEVELPIPSEEKER", pathJoin(root, "logs/pipseeker-3.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
