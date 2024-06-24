help([==[

Description
===========
Basic Local Alignment Search Tool, or BLAST, is an algorithm
 for comparing primary biological sequence information, such as the amino-acid
 sequences of different proteins or the nucleotides of DNA sequences.


More information
================
 - Homepage: https://blast.ncbi.nlm.nih.gov/
]==])

whatis([==[Description: Basic Local Alignment Search Tool, or BLAST, is an algorithm
 for comparing primary biological sequence information, such as the amino-acid
 sequences of different proteins or the nucleotides of DNA sequences.]==])
whatis([==[Homepage: https://blast.ncbi.nlm.nih.gov/]==])
whatis([==[URL: https://blast.ncbi.nlm.nih.gov/]==])

local root = "/app/software/BLAST+/2.9.0-gompi-2019b"

conflict("BLAST+")

if not ( isloaded("gompi/2019b") ) then
    load("gompi/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("PCRE/8.43-GCCcore-8.3.0") ) then
    load("PCRE/8.43-GCCcore-8.3.0")
end

if not ( isloaded("Boost/1.71.0-gompi-2019b") ) then
    load("Boost/1.71.0-gompi-2019b")
end

if not ( isloaded("GMP/6.1.2-GCCcore-8.3.0") ) then
    load("GMP/6.1.2-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("LMDB/0.9.24-GCCcore-8.3.0") ) then
    load("LMDB/0.9.24-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBLASTPLUS", root)
setenv("EBVERSIONBLASTPLUS", "2.9.0")
setenv("EBDEVELBLASTPLUS", pathJoin(root, "logs/BLAST+-2.9.0-gompi-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
