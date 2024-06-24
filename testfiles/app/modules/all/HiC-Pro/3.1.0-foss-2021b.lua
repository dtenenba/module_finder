help([==[

Description
===========
HiC-Pro was designed to process Hi-C data, from raw fastq files (paired-end Illumina data) 
 to the normalized contact maps.


More information
================
 - Homepage: http://nservant.github.io/HiC-Pro
]==])

whatis([==[Description: HiC-Pro was designed to process Hi-C data, from raw fastq files (paired-end Illumina data) 
 to the normalized contact maps.]==])
whatis([==[Homepage: http://nservant.github.io/HiC-Pro]==])
whatis([==[URL: http://nservant.github.io/HiC-Pro]==])

local root = "/app/software/HiC-Pro/3.1.0-foss-2021b"

conflict("HiC-Pro")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("iced/0.5.6-foss-2021b") ) then
    load("iced/0.5.6-foss-2021b")
end

if not ( isloaded("Pysam/0.17.0-GCC-11.2.0") ) then
    load("Pysam/0.17.0-GCC-11.2.0")
end

if not ( isloaded("bx-python/0.8.13-foss-2021b") ) then
    load("bx-python/0.8.13-foss-2021b")
end

if not ( isloaded("Bowtie2/2.4.4-GCC-11.2.0") ) then
    load("Bowtie2/2.4.4-GCC-11.2.0")
end

if not ( isloaded("SAMtools/1.15.1-GCC-11.2.0") ) then
    load("SAMtools/1.15.1-GCC-11.2.0")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHICMINPRO", root)
setenv("EBVERSIONHICMINPRO", "3.1.0")
setenv("EBDEVELHICMINPRO", pathJoin(root, "logs/HiC-Pro-3.1.0-foss-2021b-easybuild-devel"))

prepend_path("SCRIPTS", pathJoin(root, "scripts"))
-- Built with EasyBuild version 4.6.1
