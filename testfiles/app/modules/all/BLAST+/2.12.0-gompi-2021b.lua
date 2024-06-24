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

local root = "/app/software/BLAST+/2.12.0-gompi-2021b"

conflict("BLAST+")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("PCRE/8.45-GCCcore-11.2.0") ) then
    load("PCRE/8.45-GCCcore-11.2.0")
end

if not ( isloaded("Boost/1.77.0-GCC-11.2.0") ) then
    load("Boost/1.77.0-GCC-11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("LMDB/0.9.29-GCCcore-11.2.0") ) then
    load("LMDB/0.9.29-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBLASTPLUS", root)
setenv("EBVERSIONBLASTPLUS", "2.12.0")
setenv("EBDEVELBLASTPLUS", pathJoin(root, "logs/BLAST+-2.12.0-gompi-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
