help([==[

Description
===========
Cell Ranger ATAC is a set of analysis pipelines that process 
Chromium Single Cell ATAC data.


More information
================
 - Homepage: https://support.10xgenomics.com/single-cell-atac/software/pipelines/latest/what-is-cell-ranger-atac
]==])

whatis([==[Description: Cell Ranger ATAC is a set of analysis pipelines that process 
Chromium Single Cell ATAC data.]==])
whatis([==[Homepage: https://support.10xgenomics.com/single-cell-atac/software/pipelines/latest/what-is-cell-ranger-atac]==])
whatis([==[URL: https://support.10xgenomics.com/single-cell-atac/software/pipelines/latest/what-is-cell-ranger-atac]==])

local root = "/app/software/CellRanger-ATAC/2.0.0"

conflict("CellRanger-ATAC")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLRANGERMINATAC", root)
setenv("EBVERSIONCELLRANGERMINATAC", "2.0.0")
setenv("EBDEVELCELLRANGERMINATAC", pathJoin(root, "logs/CellRanger-ATAC-2.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
