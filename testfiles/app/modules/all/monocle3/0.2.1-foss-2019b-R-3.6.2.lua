help([==[

Description
===========
Single-cell transcriptome sequencing (sc-RNA-seq) experiments allow us to discover new cell types and help us understand how they arise in development. The Monocle 3 package provides a toolkit for analyzing single-cell gene expression experiments.


More information
================
 - Homepage: https://cole-trapnell-lab.github.io/monocle3


Included extensions
===================
batchelor-1.4.0, BEACH-1.3.1, beachmat-2.4.0, Biobase-2.48.0,
BiocGenerics-0.34.0, BiocNeighbors-1.6.0, BiocParallel-1.22.0,
BiocSingular-1.4.0, DelayedArray-0.14.0, DelayedMatrixStats-1.10.0,
dqrng-0.2.1, furrr-0.1.0, GenomeInfoDb-1.24.0, GenomeInfoDbData-1.2.3,
GenomicRanges-1.40.0, grr-0.9.5, HDF5Array-1.16.0, IRanges-2.22.1,
leidenbase-0.1.0, limma-3.44.1, Matrix.utils-0.9.8, monocle3-0.2.1,
pbmcapply-1.5.0, RcppAnnoy-0.0.16, RcppHNSW-0.2.0, RcppParallel-5.0.0,
rgdal-1.4-8, rhdf5-2.32.0, Rhdf5lib-1.10.0, RhpcBLASctl-0.20-17, rJava-0.9-12,
rsample-0.0.6, RSpectra-0.16-0, rsvd-1.0.3, rtf-0.4-14.1, S4Vectors-0.26.0,
sas7bdat-0.5, scater-1.16.0, sf-0.9-3, SingleCellExperiment-1.10.1,
sitmo-2.0.1, spdep-1.1-3, speedglm-0.3-2, SummarizedExperiment-1.18.1,
uwot-0.1.8, XVector-0.28.0, zlibbioc-1.34.0
]==])

whatis([==[Description: Single-cell transcriptome sequencing (sc-RNA-seq) experiments allow us to discover new cell types and help us understand how they arise in development. The Monocle 3 package provides a toolkit for analyzing single-cell gene expression experiments.]==])
whatis([==[Homepage: https://cole-trapnell-lab.github.io/monocle3]==])
whatis([==[URL: https://cole-trapnell-lab.github.io/monocle3]==])
whatis([==[Extensions: batchelor-1.4.0, BEACH-1.3.1, beachmat-2.4.0, Biobase-2.48.0, BiocGenerics-0.34.0, BiocNeighbors-1.6.0, BiocParallel-1.22.0, BiocSingular-1.4.0, DelayedArray-0.14.0, DelayedMatrixStats-1.10.0, dqrng-0.2.1, furrr-0.1.0, GenomeInfoDb-1.24.0, GenomeInfoDbData-1.2.3, GenomicRanges-1.40.0, grr-0.9.5, HDF5Array-1.16.0, IRanges-2.22.1, leidenbase-0.1.0, limma-3.44.1, Matrix.utils-0.9.8, monocle3-0.2.1, pbmcapply-1.5.0, RcppAnnoy-0.0.16, RcppHNSW-0.2.0, RcppParallel-5.0.0, rgdal-1.4-8, rhdf5-2.32.0, Rhdf5lib-1.10.0, RhpcBLASctl-0.20-17, rJava-0.9-12, rsample-0.0.6, RSpectra-0.16-0, rsvd-1.0.3, rtf-0.4-14.1, S4Vectors-0.26.0, sas7bdat-0.5, scater-1.16.0, sf-0.9-3, SingleCellExperiment-1.10.1, sitmo-2.0.1, spdep-1.1-3, speedglm-0.3-2, SummarizedExperiment-1.18.1, uwot-0.1.8, XVector-0.28.0, zlibbioc-1.34.0]==])

local root = "/app/software/monocle3/0.2.1-foss-2019b-R-3.6.2"

conflict("monocle3")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/3.6.2-foss-2019b") ) then
    load("R/3.6.2-foss-2019b")
end

if not ( isloaded("GDAL/3.0.2-foss-2019b-Python-3.7.4") ) then
    load("GDAL/3.0.2-foss-2019b-Python-3.7.4")
end

if not ( isloaded("GEOS/3.8.0-GCC-8.3.0-Python-3.7.4") ) then
    load("GEOS/3.8.0-GCC-8.3.0-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTMONOCLE3", root)
setenv("EBVERSIONMONOCLE3", "0.2.1")
setenv("EBDEVELMONOCLE3", pathJoin(root, "logs/monocle3-0.2.1-foss-2019b-R-3.6.2-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.2.0
setenv("EBEXTSLISTMONOCLE3", "rgdal-1.4-8,sf-0.9-3,spdep-1.1-3,grr-0.9.5,Matrix.utils-0.9.8,limma-3.44.1,pbmcapply-1.5.0,RcppParallel-5.0.0,RcppAnnoy-0.0.16,RcppHNSW-0.2.0,furrr-0.1.0,rsample-0.0.6,RhpcBLASctl-0.20-17,BiocGenerics-0.34.0,Biobase-2.48.0,S4Vectors-0.26.0,IRanges-2.22.1,GenomeInfoDbData-1.2.3,GenomeInfoDb-1.24.0,zlibbioc-1.34.0,XVector-0.28.0,GenomicRanges-1.40.0,BiocParallel-1.22.0,DelayedArray-0.14.0,SummarizedExperiment-1.18.1,SingleCellExperiment-1.10.1,Rhdf5lib-1.10.0,rhdf5-2.32.0,HDF5Array-1.16.0,DelayedMatrixStats-1.10.0,speedglm-0.3-2,sitmo-2.0.1,dqrng-0.2.1,RSpectra-0.16-0,uwot-0.1.8,beachmat-2.4.0,rsvd-1.0.3,BiocNeighbors-1.6.0,BiocSingular-1.4.0,scater-1.16.0,rtf-0.4-14.1,sas7bdat-0.5,rJava-0.9-12,BEACH-1.3.1,batchelor-1.4.0,leidenbase-0.1.0,monocle3-0.2.1")
