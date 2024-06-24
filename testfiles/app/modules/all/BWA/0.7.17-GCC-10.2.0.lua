help([==[

Description
===========
Burrows-Wheeler Aligner (BWA) is an efficient program that aligns
 relatively short nucleotide sequences against a long reference sequence such as the human genome.


More information
================
 - Homepage: http://bio-bwa.sourceforge.net/
]==])

whatis([==[Description: Burrows-Wheeler Aligner (BWA) is an efficient program that aligns
 relatively short nucleotide sequences against a long reference sequence such as the human genome.]==])
whatis([==[Homepage: http://bio-bwa.sourceforge.net/]==])
whatis([==[URL: http://bio-bwa.sourceforge.net/]==])

local root = "/app/software/BWA/0.7.17-GCC-10.2.0"

conflict("BWA")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBWA", root)
setenv("EBVERSIONBWA", "0.7.17")
setenv("EBDEVELBWA", pathJoin(root, "logs/BWA-0.7.17-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
