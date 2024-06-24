help([==[

Description
===========
MAESTRO(Model-based AnalysEs of Single-cell Transcriptome and RegulOme) is a comprehensive
 single-cell RNA-seq and ATAC-seq analysis suit built using snakemake. MAESTRO combines several dozen tools and
 packages to create an integrative pipeline, which enables scRNA-seq and scATAC-seq analysis from raw sequencing
 data (fastq files) all the way through alignment, quality control, cell filtering, normalization, unsupervised
 clustering, differential expression and peak calling, celltype annotation and transcription regulation analysis.


More information
================
 - Homepage: https://github.com/liulab-dfci/MAESTRO
]==])

whatis([==[Description: MAESTRO(Model-based AnalysEs of Single-cell Transcriptome and RegulOme) is a comprehensive
 single-cell RNA-seq and ATAC-seq analysis suit built using snakemake. MAESTRO combines several dozen tools and
 packages to create an integrative pipeline, which enables scRNA-seq and scATAC-seq analysis from raw sequencing
 data (fastq files) all the way through alignment, quality control, cell filtering, normalization, unsupervised
 clustering, differential expression and peak calling, celltype annotation and transcription regulation analysis.]==])
whatis([==[Homepage: https://github.com/liulab-dfci/MAESTRO]==])
whatis([==[URL: https://github.com/liulab-dfci/MAESTRO]==])

local root = "/app/software/MAESTRO/1.2.1-foss-2019b-Python-3.7.4"

conflict("MAESTRO")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("Biopython/1.75-foss-2019b-Python-3.7.4") ) then
    load("Biopython/1.75-foss-2019b-Python-3.7.4")
end

if not ( isloaded("fhR/4.0.2-foss-2019b") ) then
    load("fhR/4.0.2-foss-2019b")
end

if not ( isloaded("STAR/2.7.6a-foss-2019b") ) then
    load("STAR/2.7.6a-foss-2019b")
end

if not ( isloaded("minimap2/2.17-GCC-8.3.0") ) then
    load("minimap2/2.17-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMAESTRO", root)
setenv("EBVERSIONMAESTRO", "1.2.1")
setenv("EBDEVELMAESTRO", pathJoin(root, "logs/MAESTRO-1.2.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.0
