help([==[

Description
===========
Single-cell transcriptome sequencing (sc-RNA-seq) experiments allow us to discover new cell types and help us understand how they arise in development. The Monocle 3 package provides a toolkit for analyzing single-cell gene expression experiments.


More information
================
 - Homepage: https://cole-trapnell-lab.github.io/monocle3


Included extensions
===================
batchelor-1.10.0, BEACH-1.3.1, ggrastr-1.0.1, grr-0.9.5, leidenbase-0.1.11,
Matrix.utils-0.9.8, Monocle3-1.2.7, pbmcapply-1.5.1, ragg-1.2.2,
ResidualMatrix-1.4.0, RhpcBLASctl-0.21-247.1, rtf-0.4-14.1, sas7bdat-0.5,
spdep-1.2-4, speedglm-0.3-4, textshaping-0.3.6
]==])

whatis([==[Description: Single-cell transcriptome sequencing (sc-RNA-seq) experiments allow us to discover new cell types and help us understand how they arise in development. The Monocle 3 package provides a toolkit for analyzing single-cell gene expression experiments.]==])
whatis([==[Homepage: https://cole-trapnell-lab.github.io/monocle3]==])
whatis([==[URL: https://cole-trapnell-lab.github.io/monocle3]==])
whatis([==[Extensions: batchelor-1.10.0, BEACH-1.3.1, ggrastr-1.0.1, grr-0.9.5, leidenbase-0.1.11, Matrix.utils-0.9.8, Monocle3-1.2.7, pbmcapply-1.5.1, ragg-1.2.2, ResidualMatrix-1.4.0, RhpcBLASctl-0.21-247.1, rtf-0.4-14.1, sas7bdat-0.5, spdep-1.2-4, speedglm-0.3-4, textshaping-0.3.6]==])

local root = "/app/software/Monocle3/1.2.7-foss-2021b-R-4.2.0"

conflict("Monocle3")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

if not ( isloaded("fhR/4.2.0-foss-2021b") ) then
    load("fhR/4.2.0-foss-2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("GEOS/3.9.1-GCC-11.2.0") ) then
    load("GEOS/3.9.1-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTMONOCLE3", root)
setenv("EBVERSIONMONOCLE3", "1.2.7")
setenv("EBDEVELMONOCLE3", pathJoin(root, "logs/Monocle3-1.2.7-foss-2021b-R-4.2.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTMONOCLE3", "textshaping-0.3.6,ragg-1.2.2,ggrastr-1.0.1,spdep-1.2-4,grr-0.9.5,Matrix.utils-0.9.8,pbmcapply-1.5.1,RhpcBLASctl-0.21-247.1,speedglm-0.3-4,rtf-0.4-14.1,sas7bdat-0.5,BEACH-1.3.1,ResidualMatrix-1.4.0,batchelor-1.10.0,leidenbase-0.1.11,Monocle3-1.2.7")