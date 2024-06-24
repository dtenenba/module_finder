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

local root = "/app/software/BLAST+/2.10.1-gompi-2020a"

conflict("BLAST+")

if not ( isloaded("gompi/2020a") ) then
    load("gompi/2020a")
end

if not ( isloaded("zlib/1.2.11-GCCcore-9.3.0") ) then
    load("zlib/1.2.11-GCCcore-9.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-9.3.0") ) then
    load("bzip2/1.0.8-GCCcore-9.3.0")
end

if not ( isloaded("PCRE/8.44-GCCcore-9.3.0") ) then
    load("PCRE/8.44-GCCcore-9.3.0")
end

if not ( isloaded("Boost/1.72.0-gompi-2020a") ) then
    load("Boost/1.72.0-gompi-2020a")
end

if not ( isloaded("GMP/6.2.0-GCCcore-9.3.0") ) then
    load("GMP/6.2.0-GCCcore-9.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-9.3.0") ) then
    load("libpng/1.6.37-GCCcore-9.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.4-GCCcore-9.3.0") ) then
    load("libjpeg-turbo/2.0.4-GCCcore-9.3.0")
end

if not ( isloaded("LMDB/0.9.24-GCCcore-9.3.0") ) then
    load("LMDB/0.9.24-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBLASTPLUS", root)
setenv("EBVERSIONBLASTPLUS", "2.10.1")
setenv("EBDEVELBLASTPLUS", pathJoin(root, "logs/BLAST+-2.10.1-gompi-2020a-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
