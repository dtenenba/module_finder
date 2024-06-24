help([==[

Description
===========
Prokka is a software tool for the rapid annotation of prokaryotic genomes.


More information
================
 - Homepage: https://www.vicbioinformatics.com/software.prokka.shtml
]==])

whatis([==[Description: Prokka is a software tool for the rapid annotation of prokaryotic genomes.]==])
whatis([==[Homepage: https://www.vicbioinformatics.com/software.prokka.shtml]==])
whatis([==[URL: https://www.vicbioinformatics.com/software.prokka.shtml]==])

local root = "/app/software/prokka/1.14.5-gompi-2020b"

conflict("prokka")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-10.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-10.2.0")
end

if not ( isloaded("BLAST+/2.11.0-gompi-2020b") ) then
    load("BLAST+/2.11.0-gompi-2020b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Bio-SearchIO-hmmer/1.7.3-GCC-10.2.0") ) then
    load("Bio-SearchIO-hmmer/1.7.3-GCC-10.2.0")
end

if not ( isloaded("parallel/20210322-GCCcore-10.2.0") ) then
    load("parallel/20210322-GCCcore-10.2.0")
end

if not ( isloaded("tbl2asn/20220427-linux64") ) then
    load("tbl2asn/20220427-linux64")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPROKKA", root)
setenv("EBVERSIONPROKKA", "1.14.5")
setenv("EBDEVELPROKKA", pathJoin(root, "logs/prokka-1.14.5-gompi-2020b-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[prokka scripts are located in $EBROOTPROKKA/bin; databases are located in $EBROOTPROKKA/db
]==])
end
-- Built with EasyBuild version 4.6.0
