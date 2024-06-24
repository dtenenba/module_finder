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

local root = "/app/software/prokka/1.14.5-gompi-2019b"

conflict("prokka")

if not ( isloaded("gompi/2019b") ) then
    load("gompi/2019b")
end

if not ( isloaded("BioPerl/1.7.2-GCCcore-8.3.0") ) then
    load("BioPerl/1.7.2-GCCcore-8.3.0")
end

if not ( isloaded("BLAST+/2.9.0-gompi-2019b") ) then
    load("BLAST+/2.9.0-gompi-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPROKKA", root)
setenv("EBVERSIONPROKKA", "1.14.5")
setenv("EBDEVELPROKKA", pathJoin(root, "logs/prokka-1.14.5-gompi-2019b-easybuild-devel"))


if mode() == "load" then
io.stderr:write([==[prokka scripts are located in $EBROOTPROKKA/bin; databases are located in $EBROOTPROKKA/db
]==])
end
-- Built with EasyBuild version 4.2.1
