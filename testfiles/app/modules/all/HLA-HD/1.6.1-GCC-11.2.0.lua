help([==[

Description
===========
HLA-HD (HLA typing from High-quality Dictionary) can accurately
 determine HLA alleles with 6-digit precision from NGS data (fastq format).
 RNA-Seq data can also be applied.


More information
================
 - Homepage: https://www.genome.med.kyoto-u.ac.jp/HLA-HD/
]==])

whatis([==[Description: HLA-HD (HLA typing from High-quality Dictionary) can accurately
 determine HLA alleles with 6-digit precision from NGS data (fastq format).
 RNA-Seq data can also be applied.]==])
whatis([==[Homepage: https://www.genome.med.kyoto-u.ac.jp/HLA-HD/]==])
whatis([==[URL: https://www.genome.med.kyoto-u.ac.jp/HLA-HD/]==])

local root = "/app/software/HLA-HD/1.6.1-GCC-11.2.0"

conflict("HLA-HD")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Bowtie2/2.4.4-GCC-11.2.0") ) then
    load("Bowtie2/2.4.4-GCC-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHLAMINHD", root)
setenv("EBVERSIONHLAMINHD", "1.6.1")
setenv("EBDEVELHLAMINHD", pathJoin(root, "logs/HLA-HD-1.6.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
