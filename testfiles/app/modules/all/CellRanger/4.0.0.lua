help([==[

Description
===========
Cell Ranger is a set of analysis pipelines that process Chromium single-cell 
RNA-seq data produced by the 10x Genomics Chromium Platform. Output to align reads, generate
 gene-cell matrices and perform clustering and gene expression analysis.


More information
================
 - Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger
]==])

whatis([==[Description: Cell Ranger is a set of analysis pipelines that process Chromium single-cell 
RNA-seq data produced by the 10x Genomics Chromium Platform. Output to align reads, generate
 gene-cell matrices and perform clustering and gene expression analysis.]==])
whatis([==[Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger]==])
whatis([==[URL: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger]==])

local root = "/app/software/CellRanger/4.0.0"

conflict("CellRanger")

if not ( isloaded("bcl2fastq2/2.20.0-foss-2019b") ) then
    load("bcl2fastq2/2.20.0-foss-2019b")
end

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLRANGER", root)
setenv("EBVERSIONCELLRANGER", "4.0.0")
setenv("EBDEVELCELLRANGER", pathJoin(root, "logs/CellRanger-4.0.0-easybuild-devel"))

setenv("TENX_REFDATA", "/shared/biodata/ngs/Reference/10X/refdata-gex-GRCh38-2020-A")
-- Built with EasyBuild version 4.2.2
