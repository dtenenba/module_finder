help([==[

Description
===========
HISAT2 is a fast and sensitive alignment program for mapping next-generation sequencing reads
 (both DNA and RNA) against the general human population (as well as against a single reference genome).


More information
================
 - Homepage: https://daehwankimlab.github.io/hisat2
]==])

whatis([==[Description: HISAT2 is a fast and sensitive alignment program for mapping next-generation sequencing reads
 (both DNA and RNA) against the general human population (as well as against a single reference genome).]==])
whatis([==[Homepage: https://daehwankimlab.github.io/hisat2]==])
whatis([==[URL: https://daehwankimlab.github.io/hisat2]==])

local root = "/app/software/HISAT2/2.2.1-gompi-2021b"

conflict("HISAT2")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("NGS/2.11.2-GCCcore-11.2.0") ) then
    load("NGS/2.11.2-GCCcore-11.2.0")
end

if not ( isloaded("ncbi-vdb/2.11.2-gompi-2021b") ) then
    load("ncbi-vdb/2.11.2-gompi-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHISAT2", root)
setenv("EBVERSIONHISAT2", "2.2.1")
setenv("EBDEVELHISAT2", pathJoin(root, "logs/HISAT2-2.2.1-gompi-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
