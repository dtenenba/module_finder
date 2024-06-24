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

local root = "/app/software/CellRanger/6.0.1"

conflict("CellRanger")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLRANGER", root)
setenv("EBVERSIONCELLRANGER", "6.0.1")
setenv("EBDEVELCELLRANGER", pathJoin(root, "logs/CellRanger-6.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
