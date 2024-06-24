help([==[

Description
===========
Chromium Single Cell Software Suite is a set of software applications for analyzing and visualizing single cell 3’ RNA-seq data produced by the 10x Genomics Chromium Platform.


More information
================
 - Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/overview/welcome
]==])

whatis([==[Description: Chromium Single Cell Software Suite is a set of software applications for analyzing and visualizing single cell 3’ RNA-seq data produced by the 10x Genomics Chromium Platform.]==])
whatis([==[Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/overview/welcome]==])

local root = "/app/easybuild/software/cellranger/3.1.0"

conflict("cellranger")

if not ( isloaded("bcl2fastq2/2.20.0-foss-2016b") ) then
    load("bcl2fastq2/2.20.0-foss-2016b")
end

setenv("EBROOTCELLRANGER", root)
setenv("EBVERSIONCELLRANGER", "3.1.0")
setenv("EBDEVELCELLRANGER", pathJoin(root, "/app/easybuild/logs/cellranger-3.1.0-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "cellranger-cs/3.1.0/bin"))
-- Built with EasyBuild version 3.9.2
