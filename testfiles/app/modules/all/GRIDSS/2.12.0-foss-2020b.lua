help([==[

Description
===========
GRIDSS is a module software suite containing tools useful for
the detection of genomic rearrangements. GRIDSS includes a genome-wide
break-end assembler, as well as a structural variation caller for Illumina
sequencing data. GRIDSS calls variants based on alignment-guided positional de
Bruijn graph genome-wide break-end assembly, split read, and read pair
evidence.


More information
================
 - Homepage: https://github.com/PapenfussLab/gridss/wiki/GRIDSS-Documentation
]==])

whatis([==[Description: GRIDSS is a module software suite containing tools useful for
the detection of genomic rearrangements. GRIDSS includes a genome-wide
break-end assembler, as well as a structural variation caller for Illumina
sequencing data. GRIDSS calls variants based on alignment-guided positional de
Bruijn graph genome-wide break-end assembly, split read, and read pair
evidence.]==])
whatis([==[Homepage: https://github.com/PapenfussLab/gridss/wiki/GRIDSS-Documentation]==])
whatis([==[URL: https://github.com/PapenfussLab/gridss/wiki/GRIDSS-Documentation]==])

local root = "/app/software/GRIDSS/2.12.0-foss-2020b"

conflict("GRIDSS")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("R/4.0.4-foss-2020b") ) then
    load("R/4.0.4-foss-2020b")
end

if not ( isloaded("SAMtools/1.11-GCC-10.2.0") ) then
    load("SAMtools/1.11-GCC-10.2.0")
end

if not ( isloaded("BWA/0.7.17-GCC-10.2.0") ) then
    load("BWA/0.7.17-GCC-10.2.0")
end

if not ( isloaded("picard/2.25.0-Java-11") ) then
    load("picard/2.25.0-Java-11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGRIDSS", root)
setenv("EBVERSIONGRIDSS", "2.12.0")
setenv("EBDEVELGRIDSS", pathJoin(root, "logs/GRIDSS-2.12.0-foss-2020b-easybuild-devel"))

prepend_path("GRIDSS_JAR", pathJoin(root, "bin"))
-- Built with EasyBuild version 4.3.4
