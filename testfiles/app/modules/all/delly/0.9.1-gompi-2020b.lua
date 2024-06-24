help([==[

Description
===========
Delly is an integrated structural variant (SV) prediction
method that can discover, genotype and visualize deletions, tandem duplications,
inversions and translocations at single-nucleotide resolution in short-read
massively parallel sequencing data. It uses paired-ends, split-reads and
read-depth to sensitively and accurately delineate genomic rearrangements
throughout the genome.


More information
================
 - Homepage: https://github.com/dellytools/delly/
]==])

whatis([==[Description: Delly is an integrated structural variant (SV) prediction
method that can discover, genotype and visualize deletions, tandem duplications,
inversions and translocations at single-nucleotide resolution in short-read
massively parallel sequencing data. It uses paired-ends, split-reads and
read-depth to sensitively and accurately delineate genomic rearrangements
throughout the genome.]==])
whatis([==[Homepage: https://github.com/dellytools/delly/]==])
whatis([==[URL: https://github.com/dellytools/delly/]==])

local root = "/app/software/Delly/0.9.1-gompi-2020b"

conflict("Delly")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

if not ( isloaded("HTSlib/1.11-GCC-10.2.0") ) then
    load("HTSlib/1.11-GCC-10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDELLY", root)
setenv("EBVERSIONDELLY", "0.9.1")
setenv("EBDEVELDELLY", pathJoin(root, "logs/Delly-0.9.1-gompi-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.5.1
