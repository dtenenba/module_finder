help([==[

Description
===========
AUGUSTUS is a program that predicts genes in eukaryotic genomic sequences


More information
================
 - Homepage: https://bioinf.uni-greifswald.de/augustus/
]==])

whatis([==[Description: AUGUSTUS is a program that predicts genes in eukaryotic genomic sequences]==])
whatis([==[Homepage: https://bioinf.uni-greifswald.de/augustus/]==])
whatis([==[URL: https://bioinf.uni-greifswald.de/augustus/]==])

local root = "/app/software/AUGUSTUS/3.4.0-foss-2020b"

conflict("AUGUSTUS")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("GSL/2.6-GCC-10.2.0") ) then
    load("GSL/2.6-GCC-10.2.0")
end

if not ( isloaded("SAMtools/1.11-GCC-10.2.0") ) then
    load("SAMtools/1.11-GCC-10.2.0")
end

if not ( isloaded("HTSlib/1.11-GCC-10.2.0") ) then
    load("HTSlib/1.11-GCC-10.2.0")
end

if not ( isloaded("BCFtools/1.11-GCC-10.2.0") ) then
    load("BCFtools/1.11-GCC-10.2.0")
end

if not ( isloaded("lpsolve/5.5.2.11-GCC-10.2.0") ) then
    load("lpsolve/5.5.2.11-GCC-10.2.0")
end

if not ( isloaded("SuiteSparse/5.8.1-foss-2020b-METIS-5.1.0") ) then
    load("SuiteSparse/5.8.1-foss-2020b-METIS-5.1.0")
end

if not ( isloaded("BamTools/2.5.1-GCC-10.2.0") ) then
    load("BamTools/2.5.1-GCC-10.2.0")
end

if not ( isloaded("SQLite/3.33.0-GCCcore-10.2.0") ) then
    load("SQLite/3.33.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAUGUSTUS", root)
setenv("EBVERSIONAUGUSTUS", "3.4.0")
setenv("EBDEVELAUGUSTUS", pathJoin(root, "logs/AUGUSTUS-3.4.0-foss-2020b-easybuild-devel"))

setenv("AUGUSTUS_BIN_PATH", "/app/software/AUGUSTUS/3.4.0-foss-2020b/bin")
setenv("AUGUSTUS_SCRIPTS_PATH", "/app/software/AUGUSTUS/3.4.0-foss-2020b/scripts")
setenv("AUGUSTUS_CONFIG_PATH", "/app/software/AUGUSTUS/3.4.0-foss-2020b/config")
prepend_path("PATH", pathJoin(root, "scripts"))
-- Built with EasyBuild version 4.3.2
