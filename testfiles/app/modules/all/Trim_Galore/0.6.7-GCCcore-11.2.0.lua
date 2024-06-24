help([==[

Description
===========
Trim Galore! is a wrapper script to automate quality and adapter
trimming as well as quality control, with some added functionality to remove biased
methylation positions for RRBS sequence files (for directional, non-directional 
(or paired-end) sequencing).


More information
================
 - Homepage: https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/
]==])

whatis([==[Description: Trim Galore! is a wrapper script to automate quality and adapter
trimming as well as quality control, with some added functionality to remove biased
methylation positions for RRBS sequence files (for directional, non-directional 
(or paired-end) sequencing).]==])
whatis([==[Homepage: https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/]==])
whatis([==[URL: https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/]==])

local root = "/app/software/Trim_Galore/0.6.7-GCCcore-11.2.0"

conflict("Trim_Galore")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("pigz/2.6-GCCcore-11.2.0") ) then
    load("pigz/2.6-GCCcore-11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("cutadapt/3.5-GCCcore-11.2.0") ) then
    load("cutadapt/3.5-GCCcore-11.2.0")
end

if not ( isloaded("FastQC/0.11.9-Java-11") ) then
    load("FastQC/0.11.9-Java-11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTRIM_GALORE", root)
setenv("EBVERSIONTRIM_GALORE", "0.6.7")
setenv("EBDEVELTRIM_GALORE", pathJoin(root, "logs/Trim_Galore-0.6.7-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
