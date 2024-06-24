help([==[

Description
===========
(Fusion And Chromosomal Translocation Enumeration and Recovery Algorithm) is a tool for detection of genomic fusions in paired-end targeted (or genome-wide) sequencing data.


More information
================
 - Homepage: https://factera.stanford.edu/
]==])

whatis([==[Description: (Fusion And Chromosomal Translocation Enumeration and Recovery Algorithm) is a tool for detection of genomic fusions in paired-end targeted (or genome-wide) sequencing data.]==])
whatis([==[Homepage: https://factera.stanford.edu/]==])
whatis([==[URL: https://factera.stanford.edu/]==])

local root = "/app/software/factera/1.4.4-foss-2019b-Perl-5.30.0"

conflict("factera")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("Boost/1.72.0-gompi-2019b") ) then
    load("Boost/1.72.0-gompi-2019b")
end

if not ( isloaded("BLAST+/2.9.0-gompi-2019b") ) then
    load("BLAST+/2.9.0-gompi-2019b")
end

if not ( isloaded("Kent_tools/20200519-linux.x86_64") ) then
    load("Kent_tools/20200519-linux.x86_64")
end

if not ( isloaded("SAMtools/1.10-GCC-8.3.0") ) then
    load("SAMtools/1.10-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTFACTERA", root)
setenv("EBVERSIONFACTERA", "1.4.4")
setenv("EBDEVELFACTERA", pathJoin(root, "logs/factera-1.4.4-foss-2019b-Perl-5.30.0-easybuild-devel"))

prepend_path("PERL5LIB", root)
prepend_path("PATH", root)

if mode() == "load" then
io.stderr:write([==[factera can be run with factera.pl
]==])
end
-- Built with EasyBuild version 4.3.1
