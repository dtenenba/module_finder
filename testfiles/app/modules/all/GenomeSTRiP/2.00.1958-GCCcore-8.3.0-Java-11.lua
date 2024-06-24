help([==[

Description
===========
Genome STRiP (Genome STRucture In Populations) is a suite of
tools for discovery and genotyping of structural variation using whole-genome
sequencing data. The methods used in Genome STRiP are designed to find shared
variation using data from multiple individuals. Genome STRiP looks both across
and within a set of sequenced genomes to detect variation.


More information
================
 - Homepage: https://www.broadinstitute.org/software/genomestrip
]==])

whatis([==[Description: Genome STRiP (Genome STRucture In Populations) is a suite of
tools for discovery and genotyping of structural variation using whole-genome
sequencing data. The methods used in Genome STRiP are designed to find shared
variation using data from multiple individuals. Genome STRiP looks both across
and within a set of sequenced genomes to detect variation.]==])
whatis([==[Homepage: https://www.broadinstitute.org/software/genomestrip]==])
whatis([==[URL: https://www.broadinstitute.org/software/genomestrip]==])

local root = "/app/software/GenomeSTRiP/2.00.1958-GCCcore-8.3.0-Java-11"

conflict("GenomeSTRiP")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("R/3.6.2-foss-2019b") ) then
    load("R/3.6.2-foss-2019b")
end

if not ( isloaded("SAMtools/1.10-GCCcore-8.3.0") ) then
    load("SAMtools/1.10-GCCcore-8.3.0")
end

if not ( isloaded("tabix/0.2.6-GCCcore-8.3.0") ) then
    load("tabix/0.2.6-GCCcore-8.3.0")
end

if not ( isloaded("GATK/4.1.4.1-GCCcore-8.3.0-Java-11") ) then
    load("GATK/4.1.4.1-GCCcore-8.3.0-Java-11")
end

if not ( isloaded("picard/2.21.6-Java-11") ) then
    load("picard/2.21.6-Java-11")
end

if not ( isloaded("BWA/0.7.17-GCC-8.3.0") ) then
    load("BWA/0.7.17-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGENOMESTRIP", root)
setenv("EBVERSIONGENOMESTRIP", "2.00.1958")
setenv("EBDEVELGENOMESTRIP", pathJoin(root, "logs/GenomeSTRiP-2.00.1958-GCCcore-8.3.0-Java-11-easybuild-devel"))

prepend_path("SV_DIR", root)
-- Built with EasyBuild version 4.2.1
