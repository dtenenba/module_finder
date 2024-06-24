help([==[

Description
===========
Tcr Receptor Utilities for Solid Tissue (TRUST) is a
computational tool to analyze TCR and BCR sequences using unselected RNA
sequencing data, profiled from solid tissues, including tumors. TRUST4 performs
de novo assembly on V, J, C genes including the hypervariable
complementarity-determining region 3 (CDR3) and reports consensus of BCR/TCR
sequences. TRUST4 then realigns the contigs to IMGT reference gene sequences to
report the corresponding information. TRUST4 supports both single-end and
paired-end sequencing data with any read length.


More information
================
 - Homepage: https://github.com/liulab-dfci/TRUST4
]==])

whatis([==[Description: Tcr Receptor Utilities for Solid Tissue (TRUST) is a
computational tool to analyze TCR and BCR sequences using unselected RNA
sequencing data, profiled from solid tissues, including tumors. TRUST4 performs
de novo assembly on V, J, C genes including the hypervariable
complementarity-determining region 3 (CDR3) and reports consensus of BCR/TCR
sequences. TRUST4 then realigns the contigs to IMGT reference gene sequences to
report the corresponding information. TRUST4 supports both single-end and
paired-end sequencing data with any read length.]==])
whatis([==[Homepage: https://github.com/liulab-dfci/TRUST4]==])
whatis([==[URL: https://github.com/liulab-dfci/TRUST4]==])

local root = "/app/software/TRUST4/1.0.7-GCC-11.2.0"

conflict("TRUST4")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTRUST4", root)
setenv("EBVERSIONTRUST4", "1.0.7")
setenv("EBDEVELTRUST4", pathJoin(root, "logs/TRUST4-1.0.7-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
