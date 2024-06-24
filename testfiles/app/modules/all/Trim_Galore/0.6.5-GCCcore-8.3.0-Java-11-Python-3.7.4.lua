help([==[

Description
===========
Trim Galore is a wrapper around Cutadapt and FastQC to
consistently apply adapter and quality trimming to FastQ files, with extra
functionality for RRBS data.


More information
================
 - Homepage: https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/
]==])

whatis([==[Description: Trim Galore is a wrapper around Cutadapt and FastQC to
consistently apply adapter and quality trimming to FastQ files, with extra
functionality for RRBS data.]==])
whatis([==[Homepage: https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/]==])
whatis([==[URL: https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/]==])

local root = "/app/software/Trim_Galore/0.6.5-GCCcore-8.3.0-Java-11-Python-3.7.4"

conflict("Trim_Galore")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("pigz/2.4-GCCcore-8.3.0") ) then
    load("pigz/2.4-GCCcore-8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("FastQC/0.11.9-Java-11") ) then
    load("FastQC/0.11.9-Java-11")
end

if not ( isloaded("cutadapt/2.7-GCCcore-8.3.0-Python-3.7.4") ) then
    load("cutadapt/2.7-GCCcore-8.3.0-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTRIM_GALORE", root)
setenv("EBVERSIONTRIM_GALORE", "0.6.5")
setenv("EBDEVELTRIM_GALORE", pathJoin(root, "logs/Trim_Galore-0.6.5-GCCcore-8.3.0-Java-11-Python-3.7.4-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.1
