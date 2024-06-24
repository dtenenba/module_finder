help([==[

Description
===========
Cell Ranger is a set of analysis pipelines that process Chromium
 single-cell RNA-seq output to align reads, generate gene-cell matrices and perform
 clustering and gene expression analysis.


More information
================
 - Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger
]==])

whatis([==[Description: Cell Ranger is a set of analysis pipelines that process Chromium
 single-cell RNA-seq output to align reads, generate gene-cell matrices and perform
 clustering and gene expression analysis.]==])
whatis([==[Homepage: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger]==])
whatis([==[URL: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger]==])

local root = "/app/software/CellRanger/7.0.1"

conflict("CellRanger")

if not ( isloaded("bcl2fastq2/2.20.0-GCC-10.2.0") ) then
    load("bcl2fastq2/2.20.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLRANGER", root)
setenv("EBVERSIONCELLRANGER", "7.0.1")
setenv("EBDEVELCELLRANGER", pathJoin(root, "logs/CellRanger-7.0.1-easybuild-devel"))

setenv("TENX_REFDATA", "/shared/biodata/ngs/Reference/10X/refdata-gex-GRCh38-2020-A")

-- hand-built with vim by jfdey 
