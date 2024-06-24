help([==[

Description
===========
Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.


More information
================
 - Homepage: https://satijalab.org/seurat


Included extensions
===================
dqrng-0.2.1, future.apply-1.7.0, leiden-0.3.7, patchwork-1.1.1, Rcpp-1.0.6,
RcppAnnoy-0.0.18, rlang-0.4.9, RSpectra-0.16-0, scattermore-0.7,
sctransform-0.3.2, Seurat-4.0.0, SeuratObject-4.0.0, sitmo-2.0.1, uwot-0.1.10
]==])

whatis([==[Description: Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.]==])
whatis([==[Homepage: https://satijalab.org/seurat]==])
whatis([==[URL: https://satijalab.org/seurat]==])
whatis([==[Extensions: dqrng-0.2.1, future.apply-1.7.0, leiden-0.3.7, patchwork-1.1.1, Rcpp-1.0.6, RcppAnnoy-0.0.18, rlang-0.4.9, RSpectra-0.16-0, scattermore-0.7, sctransform-0.3.2, Seurat-4.0.0, SeuratObject-4.0.0, sitmo-2.0.1, uwot-0.1.10]==])

local root = "/app/software/Seurat/4.0.0-foss-2019b-R-4.0.2"

conflict("Seurat")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEURAT", root)
setenv("EBVERSIONSEURAT", "4.0.0")
setenv("EBDEVELSEURAT", pathJoin(root, "logs/Seurat-4.0.0-foss-2019b-R-4.0.2-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTSEURAT", "rlang-0.4.9,future.apply-1.7.0,leiden-0.3.7,patchwork-1.1.1,Rcpp-1.0.6,RcppAnnoy-0.0.18,RSpectra-0.16-0,scattermore-0.7,sctransform-0.3.2,sitmo-2.0.1,dqrng-0.2.1,uwot-0.1.10,SeuratObject-4.0.0,Seurat-4.0.0")
