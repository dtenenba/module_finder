help([==[

Description
===========
Kraken is a system for assigning taxonomic labels to short DNA sequences,
 usually obtained through metagenomic studies. Previous attempts by other
 bioinformatics software to accomplish this task have often used sequence
 alignment or machine learning techniques that were quite slow, leading to
 the development of less sensitive but much faster abundance estimation
 programs. Kraken aims to achieve high sensitivity and high speed by
 utilizing exact alignments of k-mers and a novel classification algorithm.


More information
================
 - Homepage: http://www.ccb.jhu.edu/software/kraken2/
]==])

whatis([==[Description: Kraken is a system for assigning taxonomic labels to short DNA sequences,
 usually obtained through metagenomic studies. Previous attempts by other
 bioinformatics software to accomplish this task have often used sequence
 alignment or machine learning techniques that were quite slow, leading to
 the development of less sensitive but much faster abundance estimation
 programs. Kraken aims to achieve high sensitivity and high speed by
 utilizing exact alignments of k-mers and a novel classification algorithm.]==])
whatis([==[Homepage: http://www.ccb.jhu.edu/software/kraken2/]==])
whatis([==[URL: http://www.ccb.jhu.edu/software/kraken2/]==])

local root = "/app/software/Kraken2/2.0.9-beta-gompi-2020a-Perl-5.30.2"

conflict("Kraken2")

if not ( isloaded("gompi/2020a") ) then
    load("gompi/2020a")
end

if not ( isloaded("Perl/5.30.2-GCCcore-9.3.0") ) then
    load("Perl/5.30.2-GCCcore-9.3.0")
end

if not ( isloaded("BLAST+/2.10.1-gompi-2020a") ) then
    load("BLAST+/2.10.1-gompi-2020a")
end

if not ( isloaded("wget/1.20.3-GCCcore-9.3.0") ) then
    load("wget/1.20.3-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTKRAKEN2", root)
setenv("EBVERSIONKRAKEN2", "2.0.9-beta")
setenv("EBDEVELKRAKEN2", pathJoin(root, "logs/Kraken2-2.0.9-beta-gompi-2020a-Perl-5.30.2-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("PATH", root)
-- Built with EasyBuild version 4.2.2
