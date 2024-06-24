help([==[

Description
===========
Samtools is a suite of programs for interacting with high-throughput sequencing data.
 BCFtools - Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence
 variants


More information
================
 - Homepage: http://www.htslib.org/
]==])

whatis([==[Description: Samtools is a suite of programs for interacting with high-throughput sequencing data.
 BCFtools - Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence
 variants]==])
whatis([==[Homepage: http://www.htslib.org/]==])
whatis([==[URL: http://www.htslib.org/]==])

local root = "/app/software/BCFtools/1.9-GCC-8.3.0"

conflict("BCFtools")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("GSL/2.6-GCC-8.3.0") ) then
    load("GSL/2.6-GCC-8.3.0")
end

prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBCFTOOLS", root)
setenv("EBVERSIONBCFTOOLS", "1.9")
setenv("EBDEVELBCFTOOLS", pathJoin(root, "logs/BCFtools-1.9-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
