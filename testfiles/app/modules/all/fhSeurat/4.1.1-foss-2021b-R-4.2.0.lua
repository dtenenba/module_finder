help([==[

Description
===========
Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.
fhSeurat module has additional Bioconductor packages for single-cell analysis.


More information
================
 - Homepage: https://satijalab.org/seurat


Included extensions
===================
batchelor-1.12.3, beachmat-2.12.0, Biobase-2.56.0, BiocGenerics-0.42.0,
BiocNeighbors-1.14.0, BiocParallel-1.28.1, BiocSingular-1.12.0,
Biostrings-2.64.0, DelayedArray-0.22.0, DelayedMatrixStats-1.18.0,
dqrng-0.3.0, GenomeInfoDb-1.32.1, GenomeInfoDbData-1.2.8,
GenomicRanges-1.48.0, HDF5Array-1.24.2, IRanges-2.30.0, MatrixGenerics-1.8.0,
RcppAnnoy-0.0.19, RcppHNSW-0.3.0, ResidualMatrix-1.6.1, rhdf5-2.40.0,
rhdf5filters-1.8.0, Rhdf5lib-1.18.0, Rhtslib-1.28.0, Rsamtools-2.12.0,
rsvd-1.0.5, S4Vectors-0.34.0, ScaledMatrix-1.4.0, scattermore-0.8,
scuttle-1.6.3, Seurat-4.1.1, SeuratObject-4.1.1, Signac-1.7.0,
SingleCellExperiment-1.18.0, sitmo-2.0.2, sparseMatrixStats-1.8.0,
SummarizedExperiment-1.26.0, uwot-0.1.11, XVector-0.36.0, zlibbioc-1.42.0
]==])

whatis([==[Description: Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.
fhSeurat module has additional Bioconductor packages for single-cell analysis.]==])
whatis([==[Homepage: https://satijalab.org/seurat]==])
whatis([==[URL: https://satijalab.org/seurat]==])
whatis([==[Extensions: batchelor-1.12.3, beachmat-2.12.0, Biobase-2.56.0, BiocGenerics-0.42.0, BiocNeighbors-1.14.0, BiocParallel-1.28.1, BiocSingular-1.12.0, Biostrings-2.64.0, DelayedArray-0.22.0, DelayedMatrixStats-1.18.0, dqrng-0.3.0, GenomeInfoDb-1.32.1, GenomeInfoDbData-1.2.8, GenomicRanges-1.48.0, HDF5Array-1.24.2, IRanges-2.30.0, MatrixGenerics-1.8.0, RcppAnnoy-0.0.19, RcppHNSW-0.3.0, ResidualMatrix-1.6.1, rhdf5-2.40.0, rhdf5filters-1.8.0, Rhdf5lib-1.18.0, Rhtslib-1.28.0, Rsamtools-2.12.0, rsvd-1.0.5, S4Vectors-0.34.0, ScaledMatrix-1.4.0, scattermore-0.8, scuttle-1.6.3, Seurat-4.1.1, SeuratObject-4.1.1, Signac-1.7.0, SingleCellExperiment-1.18.0, sitmo-2.0.2, sparseMatrixStats-1.8.0, SummarizedExperiment-1.26.0, uwot-0.1.11, XVector-0.36.0, zlibbioc-1.42.0]==])

local root = "/app/software/fhSeurat/4.1.1-foss-2021b-R-4.2.0"

conflict("fhSeurat")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

if not ( isloaded("fhR/4.2.0-foss-2021b") ) then
    load("fhR/4.2.0-foss-2021b")
end

if not ( isloaded("GEOS/3.9.1-GCC-11.2.0") ) then
    load("GEOS/3.9.1-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFHSEURAT", root)
setenv("EBVERSIONFHSEURAT", "4.1.1")
setenv("EBDEVELFHSEURAT", pathJoin(root, "logs/fhSeurat-4.1.1-foss-2021b-R-4.2.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTFHSEURAT", "BiocGenerics-0.42.0,S4Vectors-0.34.0,IRanges-2.30.0,GenomeInfoDbData-1.2.8,GenomeInfoDb-1.32.1,zlibbioc-1.42.0,XVector-0.36.0,GenomicRanges-1.48.0,Rhtslib-1.28.0,Biostrings-2.64.0,BiocParallel-1.28.1,Rsamtools-2.12.0,SeuratObject-4.1.1,Signac-1.7.0,RcppAnnoy-0.0.19,scattermore-0.8,sitmo-2.0.2,dqrng-0.3.0,uwot-0.1.11,RcppHNSW-0.3.0,BiocNeighbors-1.14.0,MatrixGenerics-1.8.0,DelayedArray-0.22.0,beachmat-2.12.0,rsvd-1.0.5,ScaledMatrix-1.4.0,BiocSingular-1.12.0,Biobase-2.56.0,SummarizedExperiment-1.26.0,SingleCellExperiment-1.18.0,sparseMatrixStats-1.8.0,Rhdf5lib-1.18.0,rhdf5filters-1.8.0,rhdf5-2.40.0,HDF5Array-1.24.2,DelayedMatrixStats-1.18.0,scuttle-1.6.3,ResidualMatrix-1.6.1,batchelor-1.12.3,Seurat-4.1.1")
