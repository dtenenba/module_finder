help([==[

Description
===========
Cell Ranger ARC is a set of analysis pipelines that process
 Chromium Single Cell Multiome ATAC + Gene Expression sequencing data to generate a
 variety of analyses pertaining to gene expression, chromatin accessibility and
 their linkage. Furthermore, since the ATAC and gene expression measurements are on
 the very same cell, we are able to perform analyses that link chromatin
 accessibility and gene expression.


More information
================
 - Homepage: https://support.10xgenomics.com/single-cell-multiome-atac-gex/software/pipelines/latest/what-is-cell-ranger-arc
]==])

whatis([==[Description: Cell Ranger ARC is a set of analysis pipelines that process
 Chromium Single Cell Multiome ATAC + Gene Expression sequencing data to generate a
 variety of analyses pertaining to gene expression, chromatin accessibility and
 their linkage. Furthermore, since the ATAC and gene expression measurements are on
 the very same cell, we are able to perform analyses that link chromatin
 accessibility and gene expression.]==])
whatis([==[Homepage: https://support.10xgenomics.com/single-cell-multiome-atac-gex/software/pipelines/latest/what-is-cell-ranger-arc]==])
whatis([==[URL: https://support.10xgenomics.com/single-cell-multiome-atac-gex/software/pipelines/latest/what-is-cell-ranger-arc]==])

local root = "/app/software/CellRanger-ARC/2.0.0"

conflict("CellRanger-ARC")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLRANGERMINARC", root)
setenv("EBVERSIONCELLRANGERMINARC", "2.0.0")
setenv("EBDEVELCELLRANGERMINARC", pathJoin(root, "logs/CellRanger-ARC-2.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
