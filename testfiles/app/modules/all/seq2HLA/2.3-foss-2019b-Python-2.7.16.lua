help([==[

Description
===========
In-silico method written in Python and R to determine HLA genotypes of a sample.
 seq2HLA takes standard RNA-Seq sequence reads in fastq format as input,
 uses a bowtie index comprising all HLA alleles and outputs the most likely
 HLA class I and class II genotypes (in 4 digit resolution),
 a p-value for each call, and the expression of each class.


More information
================
 - Homepage: https://github.com/TRON-Bioinformatics/seq2HLA
]==])

whatis([==[Description:  In-silico method written in Python and R to determine HLA genotypes of a sample.
 seq2HLA takes standard RNA-Seq sequence reads in fastq format as input,
 uses a bowtie index comprising all HLA alleles and outputs the most likely
 HLA class I and class II genotypes (in 4 digit resolution),
 a p-value for each call, and the expression of each class. ]==])
whatis([==[Homepage: https://github.com/TRON-Bioinformatics/seq2HLA]==])
whatis([==[URL: https://github.com/TRON-Bioinformatics/seq2HLA]==])

local root = "/app/software/seq2HLA/2.3-foss-2019b-Python-2.7.16"

conflict("seq2HLA")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Biopython/1.75-foss-2019b-Python-2.7.16") ) then
    load("Biopython/1.75-foss-2019b-Python-2.7.16")
end

if not ( isloaded("Bowtie/1.2.3-GCC-8.3.0") ) then
    load("Bowtie/1.2.3-GCC-8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("R/3.6.2-foss-2019b") ) then
    load("R/3.6.2-foss-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSEQ2HLA", root)
setenv("EBVERSIONSEQ2HLA", "2.3")
setenv("EBDEVELSEQ2HLA", pathJoin(root, "logs/seq2HLA-2.3-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.2
