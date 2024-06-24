help([==[

Description
===========
Bowtie 2 is an ultrafast and memory-efficient tool for aligning sequencing reads
 to long reference sequences. It is particularly good at aligning reads of about 50 up to 100s or 1,000s
 of characters, and particularly good at aligning to relatively long (e.g. mammalian) genomes.
 Bowtie 2 indexes the genome with an FM Index to keep its memory footprint small: for the human genome,
 its memory footprint is typically around 3.2 GB. Bowtie 2 supports gapped, local, and paired-end alignment modes.


More information
================
 - Homepage: https://bowtie-bio.sourceforge.net/bowtie2/index.shtml
]==])

whatis([==[Description:  Bowtie 2 is an ultrafast and memory-efficient tool for aligning sequencing reads
 to long reference sequences. It is particularly good at aligning reads of about 50 up to 100s or 1,000s
 of characters, and particularly good at aligning to relatively long (e.g. mammalian) genomes.
 Bowtie 2 indexes the genome with an FM Index to keep its memory footprint small: for the human genome,
 its memory footprint is typically around 3.2 GB. Bowtie 2 supports gapped, local, and paired-end alignment modes.]==])
whatis([==[Homepage: https://bowtie-bio.sourceforge.net/bowtie2/index.shtml]==])
whatis([==[URL: https://bowtie-bio.sourceforge.net/bowtie2/index.shtml]==])

local root = "/app/software/Bowtie2/2.5.1-GCC-12.2.0"

conflict("Bowtie2")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("Perl/5.36.0-GCCcore-12.2.0") ) then
    load("Perl/5.36.0-GCCcore-12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBOWTIE2", root)
setenv("EBVERSIONBOWTIE2", "2.5.1")
setenv("EBDEVELBOWTIE2", pathJoin(root, "logs/Bowtie2-2.5.1-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
