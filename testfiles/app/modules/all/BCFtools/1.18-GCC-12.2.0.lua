help([==[

Description
===========
Samtools is a suite of programs for interacting with high-throughput sequencing data.
 BCFtools - Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence
 variants


More information
================
 - Homepage: https://www.htslib.org/
]==])

whatis([==[Description: Samtools is a suite of programs for interacting with high-throughput sequencing data.
 BCFtools - Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence
 variants]==])
whatis([==[Homepage: https://www.htslib.org/]==])
whatis([==[URL: https://www.htslib.org/]==])

local root = "/app/software/BCFtools/1.18-GCC-12.2.0"

conflict("BCFtools")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("HTSlib/1.17-GCC-12.2.0") ) then
    load("HTSlib/1.17-GCC-12.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.2.0") ) then
    load("bzip2/1.0.8-GCCcore-12.2.0")
end

if not ( isloaded("XZ/5.2.7-GCCcore-12.2.0") ) then
    load("XZ/5.2.7-GCCcore-12.2.0")
end

if not ( isloaded("GSL/2.7-GCC-12.2.0") ) then
    load("GSL/2.7-GCC-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBCFTOOLS", root)
setenv("EBVERSIONBCFTOOLS", "1.18")
setenv("EBDEVELBCFTOOLS", pathJoin(root, "logs/BCFtools-1.18-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
