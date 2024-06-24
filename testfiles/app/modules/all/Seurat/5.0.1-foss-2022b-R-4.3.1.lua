help([==[

Description
===========
Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.


More information
================
 - Homepage: https://satijalab.org/seurat


Included extensions
===================
Azimuth-0.5.0, BSgenome.Hsapiens.UCSC.hg38-1.4.5, dotCall64-1.1-1,
EnsDb.Hsapiens.v86-2.99.0, fastDummies-1.7.3, fitdistrplus-1.1-11,
generics-0.1.3, glmGamPoi-1.12.2, ica-1.0-3, JASPAR2020-0.99.10, leiden-0.4.3,
Matrix-1.6-3, presto-1.0.0, RANN-2.6.1, RcppEigen-0.3.4.0.0, RcppRoll-0.3.0,
rJava-1.0-11, sctransform-0.4.1, Seurat-5.0.1, seurat-data-0.2.1,
SeuratDisk-0.0.0.9021, SeuratObject-5.0.1, shinydashboard-0.7.2,
Signac-1.13.0, spam-2.10-0
]==])

whatis([==[Description: Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.]==])
whatis([==[Homepage: https://satijalab.org/seurat]==])
whatis([==[URL: https://satijalab.org/seurat]==])
whatis([==[Extensions: Azimuth-0.5.0, BSgenome.Hsapiens.UCSC.hg38-1.4.5, dotCall64-1.1-1, EnsDb.Hsapiens.v86-2.99.0, fastDummies-1.7.3, fitdistrplus-1.1-11, generics-0.1.3, glmGamPoi-1.12.2, ica-1.0-3, JASPAR2020-0.99.10, leiden-0.4.3, Matrix-1.6-3, presto-1.0.0, RANN-2.6.1, RcppEigen-0.3.4.0.0, RcppRoll-0.3.0, rJava-1.0-11, sctransform-0.4.1, Seurat-5.0.1, seurat-data-0.2.1, SeuratDisk-0.0.0.9021, SeuratObject-5.0.1, shinydashboard-0.7.2, Signac-1.13.0, spam-2.10-0]==])

local root = "/app/software/Seurat/5.0.1-foss-2022b-R-4.3.1"

conflict("Seurat")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("R/4.3.1-gfbf-2022b") ) then
    load("R/4.3.1-gfbf-2022b")
end

if not ( isloaded("R-Tidyverse/4.3.1-gfbf-2022b") ) then
    load("R-Tidyverse/4.3.1-gfbf-2022b")
end

if not ( isloaded("fhR/4.3.1-foss-2022b") ) then
    load("fhR/4.3.1-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEURAT", root)
setenv("EBVERSIONSEURAT", "5.0.1")
setenv("EBDEVELSEURAT", pathJoin(root, "logs/Seurat-5.0.1-foss-2022b-R-4.3.1-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTSEURAT", "rJava-1.0-11,Matrix-1.6-3,dotCall64-1.1-1,spam-2.10-0,generics-0.1.3,RcppEigen-0.3.4.0.0,SeuratObject-5.0.1,sctransform-0.4.1,fastDummies-1.7.3,fitdistrplus-1.1-11,ica-1.0-3,leiden-0.4.3,RANN-2.6.1,Seurat-5.0.1,seurat-data-0.2.1,SeuratDisk-0.0.0.9021,BSgenome.Hsapiens.UCSC.hg38-1.4.5,EnsDb.Hsapiens.v86-2.99.0,glmGamPoi-1.12.2,JASPAR2020-0.99.10,shinydashboard-0.7.2,presto-1.0.0,RcppRoll-0.3.0,Signac-1.13.0,Azimuth-0.5.0")
