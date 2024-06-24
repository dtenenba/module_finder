help([==[

Description
===========
RNA-SeQC is a java program which computes a series of quality control metrics for
 RNA-seq data. The input can be one or more BAM files. The output consists of HTML reports and tab
 delimited files of metrics data. This program can be valuable for comparing sequencing quality
 across different samples or experiments to evaluate different experimental parameters. It can
 also be run on individual samples as a means of quality control before continuing with downstream
 analysis.


More information
================
 - Homepage: https://software.broadinstitute.org/cancer/cga/rna-seqc
]==])

whatis([==[Description: RNA-SeQC is a java program which computes a series of quality control metrics for
 RNA-seq data. The input can be one or more BAM files. The output consists of HTML reports and tab
 delimited files of metrics data. This program can be valuable for comparing sequencing quality
 across different samples or experiments to evaluate different experimental parameters. It can
 also be run on individual samples as a means of quality control before continuing with downstream
 analysis.]==])
whatis([==[Homepage: https://software.broadinstitute.org/cancer/cga/rna-seqc]==])
whatis([==[URL: https://software.broadinstitute.org/cancer/cga/rna-seqc]==])

local root = "/app/software/RNA-SeQC/2.3.4-foss-2019b"

conflict("RNA-SeQC")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2020.04-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2020.04-foss-2019b-Python-3.7.4")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("BamTools/2.5.1-GCC-8.3.0") ) then
    load("BamTools/2.5.1-GCC-8.3.0")
end

if not ( isloaded("Boost/1.72.0-gompi-2019b") ) then
    load("Boost/1.72.0-gompi-2019b")
end

if not ( isloaded("BWA/0.7.17-GCC-8.3.0") ) then
    load("BWA/0.7.17-GCC-8.3.0")
end

if not ( isloaded("Java/1.8") ) then
    load("Java/1.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRNAMINSEQC", root)
setenv("EBVERSIONRNAMINSEQC", "2.3.4")
setenv("EBDEVELRNAMINSEQC", pathJoin(root, "logs/RNA-SeQC-2.3.4-foss-2019b-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[To execute RNA-SeQC run: java -jar $EBROOTRNAMINSEQC/RNA-SeQC_v2.3.4.jar
]==])
end
-- Built with EasyBuild version 4.2.1
