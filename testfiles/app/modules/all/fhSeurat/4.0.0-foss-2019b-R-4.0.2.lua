help([==[

Description
===========
Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.


More information
================
 - Homepage: https://satijalab.org/seurat


Included extensions
===================
batchelor-1.6.2, beachmat-2.6.4, Biobase-2.50.0, BiocGenerics-0.36.0,
BiocNeighbors-1.8.2, BiocParallel-1.24.1, BiocSingular-1.6.0,
DelayedArray-0.16.1, DelayedMatrixStats-1.12.3, dqrng-0.2.1,
future.apply-1.7.0, GenomeInfoDb-1.26.2, GenomeInfoDbData-1.2.4,
GenomicRanges-1.42.0, HDF5Array-1.18.1, IRanges-2.24.1, leiden-0.3.7,
MatrixGenerics-1.2.1, matrixStats-0.58.0, patchwork-1.1.1, Rcpp-1.0.6,
RcppAnnoy-0.0.18, RcppHNSW-0.3.0, ResidualMatrix-1.0.0, rhdf5-2.34.0,
rhdf5filters-1.2.0, Rhdf5lib-1.12.1, rlang-0.4.9, RSpectra-0.16-0, rsvd-1.0.3,
S4Vectors-0.28.1, scattermore-0.7, sctransform-0.3.2, scuttle-1.0.4,
Seurat-4.0.0, SeuratObject-4.0.0, SingleCellExperiment-1.12.0, sitmo-2.0.1,
sparseMatrixStats-1.2.1, SummarizedExperiment-1.20.0, uwot-0.1.10,
XVector-0.30.0, zlibbioc-1.36.0
]==])

whatis([==[Description: Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.]==])
whatis([==[Homepage: https://satijalab.org/seurat]==])
whatis([==[URL: https://satijalab.org/seurat]==])
whatis([==[Extensions: batchelor-1.6.2, beachmat-2.6.4, Biobase-2.50.0, BiocGenerics-0.36.0, BiocNeighbors-1.8.2, BiocParallel-1.24.1, BiocSingular-1.6.0, DelayedArray-0.16.1, DelayedMatrixStats-1.12.3, dqrng-0.2.1, future.apply-1.7.0, GenomeInfoDb-1.26.2, GenomeInfoDbData-1.2.4, GenomicRanges-1.42.0, HDF5Array-1.18.1, IRanges-2.24.1, leiden-0.3.7, MatrixGenerics-1.2.1, matrixStats-0.58.0, patchwork-1.1.1, Rcpp-1.0.6, RcppAnnoy-0.0.18, RcppHNSW-0.3.0, ResidualMatrix-1.0.0, rhdf5-2.34.0, rhdf5filters-1.2.0, Rhdf5lib-1.12.1, rlang-0.4.9, RSpectra-0.16-0, rsvd-1.0.3, S4Vectors-0.28.1, scattermore-0.7, sctransform-0.3.2, scuttle-1.0.4, Seurat-4.0.0, SeuratObject-4.0.0, SingleCellExperiment-1.12.0, sitmo-2.0.1, sparseMatrixStats-1.2.1, SummarizedExperiment-1.20.0, uwot-0.1.10, XVector-0.30.0, zlibbioc-1.36.0]==])

local root = "/app/software/fhSeurat/4.0.0-foss-2019b-R-4.0.2"

conflict("fhSeurat")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFHSEURAT", root)
setenv("EBVERSIONFHSEURAT", "4.0.0")
setenv("EBDEVELFHSEURAT", pathJoin(root, "logs/fhSeurat-4.0.0-foss-2019b-R-4.0.2-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTFHSEURAT", "rlang-0.4.9,future.apply-1.7.0,leiden-0.3.7,patchwork-1.1.1,Rcpp-1.0.6,RcppAnnoy-0.0.18,RSpectra-0.16-0,scattermore-0.7,sctransform-0.3.2,sitmo-2.0.1,dqrng-0.2.1,uwot-0.1.10,RcppHNSW-0.3.0,BiocGenerics-0.36.0,S4Vectors-0.28.1,BiocParallel-1.24.1,BiocNeighbors-1.8.2,matrixStats-0.58.0,MatrixGenerics-1.2.1,IRanges-2.24.1,DelayedArray-0.16.1,beachmat-2.6.4,rsvd-1.0.3,BiocSingular-1.6.0,GenomeInfoDbData-1.2.4,GenomeInfoDb-1.26.2,zlibbioc-1.36.0,XVector-0.30.0,GenomicRanges-1.42.0,Biobase-2.50.0,SummarizedExperiment-1.20.0,SingleCellExperiment-1.12.0,sparseMatrixStats-1.2.1,Rhdf5lib-1.12.1,rhdf5filters-1.2.0,rhdf5-2.34.0,HDF5Array-1.18.1,DelayedMatrixStats-1.12.3,scuttle-1.0.4,ResidualMatrix-1.0.0,batchelor-1.6.2,SeuratObject-4.0.0,Seurat-4.0.0")
