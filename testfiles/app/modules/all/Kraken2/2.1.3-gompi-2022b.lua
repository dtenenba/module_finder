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
 - Homepage: https://github.com/DerrickWood/kraken2/wiki
]==])

whatis([==[Description: Kraken is a system for assigning taxonomic labels to short DNA sequences,
 usually obtained through metagenomic studies. Previous attempts by other
 bioinformatics software to accomplish this task have often used sequence
 alignment or machine learning techniques that were quite slow, leading to
 the development of less sensitive but much faster abundance estimation
 programs. Kraken aims to achieve high sensitivity and high speed by
 utilizing exact alignments of k-mers and a novel classification algorithm.]==])
whatis([==[Homepage: https://github.com/DerrickWood/kraken2/wiki]==])
whatis([==[URL: https://github.com/DerrickWood/kraken2/wiki]==])

local root = "/app/software/Kraken2/2.1.3-gompi-2022b"

conflict("Kraken2")

if not ( isloaded("gompi/2022b") ) then
    load("gompi/2022b")
end

if not ( isloaded("Perl/5.36.0-GCCcore-12.2.0") ) then
    load("Perl/5.36.0-GCCcore-12.2.0")
end

if not ( isloaded("BLAST+/2.14.0-gompi-2022b") ) then
    load("BLAST+/2.14.0-gompi-2022b")
end

if not ( isloaded("wget/1.21.4-GCCcore-12.2.0") ) then
    load("wget/1.21.4-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKRAKEN2", root)
setenv("EBVERSIONKRAKEN2", "2.1.3")
setenv("EBDEVELKRAKEN2", pathJoin(root, "logs/Kraken2-2.1.3-gompi-2022b-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.2
