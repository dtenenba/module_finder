help([==[

Description
===========
Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.


More information
================
 - Homepage: https://satijalab.org/seurat


Included extensions
===================
Seurat-4.1.1, SeuratObject-4.1.0
]==])

whatis([==[Description: Seurat is an R package designed for QC, analysis, and exploration of single cell RNA-seq data.]==])
whatis([==[Homepage: https://satijalab.org/seurat]==])
whatis([==[URL: https://satijalab.org/seurat]==])
whatis([==[Extensions: Seurat-4.1.1, SeuratObject-4.1.0]==])

local root = "/app/software/Seurat/4.1.1-foss-2021b-R-4.2.0"

conflict("Seurat")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

if not ( isloaded("fhR/4.2.0-foss-2021b") ) then
    load("fhR/4.2.0-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEURAT", root)
setenv("EBVERSIONSEURAT", "4.1.1")
setenv("EBDEVELSEURAT", pathJoin(root, "logs/Seurat-4.1.1-foss-2021b-R-4.2.0-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTSEURAT", "SeuratObject-4.1.0,Seurat-4.1.1")
