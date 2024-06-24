help([==[

Description
===========
Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.


More information
================
 - Homepage: https://satijalab.org/seurat


Included extensions
===================
Matrix-1.6-5, scattermore-1.2, sctransform-0.4.1, Seurat-5.0.1,
SeuratObject-5.0.1, sp-1.5-1, spatstat.data-3.0-0, spatstat.explore-3.0-5,
spatstat.geom-3.0-3, spatstat.random-3.0-1, spatstat.sparse-3.0-0,
spatstat.utils-3.0-1, uwot-0.1.14
]==])

whatis([==[Description: Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.]==])
whatis([==[Homepage: https://satijalab.org/seurat]==])
whatis([==[URL: https://satijalab.org/seurat]==])
whatis([==[Extensions: Matrix-1.6-5, scattermore-1.2, sctransform-0.4.1, Seurat-5.0.1, SeuratObject-5.0.1, sp-1.5-1, spatstat.data-3.0-0, spatstat.explore-3.0-5, spatstat.geom-3.0-3, spatstat.random-3.0-1, spatstat.sparse-3.0-0, spatstat.utils-3.0-1, uwot-0.1.14]==])

local root = "/app/software/Seurat/5.0.1-foss-2022b-R-4.2.2"

conflict("Seurat")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("R/4.2.2-foss-2022b") ) then
    load("R/4.2.2-foss-2022b")
end

if not ( isloaded("R-bundle-Bioconductor/3.16-foss-2022b-R-4.2.2") ) then
    load("R-bundle-Bioconductor/3.16-foss-2022b-R-4.2.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEURAT", root)
setenv("EBVERSIONSEURAT", "5.0.1")
setenv("EBDEVELSEURAT", pathJoin(root, "logs/Seurat-5.0.1-foss-2022b-R-4.2.2-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTSEURAT", "Matrix-1.6-5,sp-1.5-1,SeuratObject-5.0.1,sctransform-0.4.1,uwot-0.1.14,spatstat.utils-3.0-1,spatstat.data-3.0-0,spatstat.geom-3.0-3,spatstat.random-3.0-1,spatstat.sparse-3.0-0,spatstat.explore-3.0-5,scattermore-1.2,Seurat-5.0.1")
