help([==[

Description
===========
RSeQC provides a number of useful modules that can
 comprehensively evaluate high throughput sequence data especially RNA-seq
 data. Some basic modules quickly inspect sequence quality, nucleotide
 composition bias, PCR bias and GC bias, while RNA-seq specific modules
 evaluate sequencing saturation, mapped reads distribution, coverage
 uniformity, strand specificity, transcript level RNA integrity etc.


More information
================
 - Homepage: http://rseqc.sourceforge.net/
]==])

whatis([==[Description: RSeQC provides a number of useful modules that can
 comprehensively evaluate high throughput sequence data especially RNA-seq
 data. Some basic modules quickly inspect sequence quality, nucleotide
 composition bias, PCR bias and GC bias, while RNA-seq specific modules
 evaluate sequencing saturation, mapped reads distribution, coverage
 uniformity, strand specificity, transcript level RNA integrity etc.]==])
whatis([==[Homepage: http://rseqc.sourceforge.net/]==])
whatis([==[URL: http://rseqc.sourceforge.net/]==])

local root = "/app/software/RSeQC/5.0.1-foss-2021b"

conflict("RSeQC")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Pysam/0.17.0-GCC-11.2.0") ) then
    load("Pysam/0.17.0-GCC-11.2.0")
end

if not ( isloaded("bx-python/0.8.13-foss-2021b") ) then
    load("bx-python/0.8.13-foss-2021b")
end

if not ( isloaded("pyBigWig/0.3.18-foss-2021b") ) then
    load("pyBigWig/0.3.18-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRSEQC", root)
setenv("EBVERSIONRSEQC", "5.0.1")
setenv("EBDEVELRSEQC", pathJoin(root, "logs/RSeQC-5.0.1-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.1
