help([==[

Description
===========
Single Cell Analysis Pipelines


More information
================
 - Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest
]==])

whatis([==[Description: Single Cell Analysis Pipelines]==])
whatis([==[Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest]==])

local root = "/app/software/cellranger/2.1.1"

conflict("cellranger")

setenv("EBROOTCELLRANGER", root)
setenv("EBVERSIONCELLRANGER", "2.1.1")
setenv("EBDEVELCELLRANGER", pathJoin(root, "/app/logs/cellranger-2.1.1-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "cellranger-cs/2.1.1/bin"))
-- Built with EasyBuild version 3.8.0
