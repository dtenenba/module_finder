help([==[

Description
===========
Seqtk is a fast and lightweight tool for processing sequences in the FASTA or FASTQ format.
 It seamlessly parses both FASTA and FASTQ files which can also be optionally compressed by gzip.


More information
================
 - Homepage: https://github.com/lh3/seqtk/
]==])

whatis([==[Description: Seqtk is a fast and lightweight tool for processing sequences in the FASTA or FASTQ format.
 It seamlessly parses both FASTA and FASTQ files which can also be optionally compressed by gzip.]==])
whatis([==[Homepage: https://github.com/lh3/seqtk/]==])
whatis([==[URL: https://github.com/lh3/seqtk/]==])

local root = "/app/software/seqtk/1.3-GCC-10.2.0"

conflict("seqtk")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSEQTK", root)
setenv("EBVERSIONSEQTK", "1.3")
setenv("EBDEVELSEQTK", pathJoin(root, "logs/seqtk-1.3-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.2
