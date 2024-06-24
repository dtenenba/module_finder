help([==[

Description
===========
EggNOG-mapper is a tool for fast functional annotation of novel
sequences. It uses precomputed orthologous groups and phylogenies from the
eggNOG database (http://eggnog5.embl.de) to transfer functional information from
fine-grained orthologs only. Common uses of eggNOG-mapper include the annotation
of novel genomes, transcriptomes or even metagenomic gene catalogs.


More information
================
 - Homepage: https://github.com/eggnogdb/eggnog-mapper
]==])

whatis([==[Description: EggNOG-mapper is a tool for fast functional annotation of novel
sequences. It uses precomputed orthologous groups and phylogenies from the
eggNOG database (http://eggnog5.embl.de) to transfer functional information from
fine-grained orthologs only. Common uses of eggNOG-mapper include the annotation
of novel genomes, transcriptomes or even metagenomic gene catalogs.]==])
whatis([==[Homepage: https://github.com/eggnogdb/eggnog-mapper]==])
whatis([==[URL: https://github.com/eggnogdb/eggnog-mapper]==])

local root = "/app/software/eggnog-mapper/2.1.7-foss-2021b"

conflict("eggnog-mapper")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Biopython/1.79-foss-2021b") ) then
    load("Biopython/1.79-foss-2021b")
end

if not ( isloaded("HMMER/3.3.2-gompi-2021b") ) then
    load("HMMER/3.3.2-gompi-2021b")
end

if not ( isloaded("DIAMOND/2.0.13-GCC-11.2.0") ) then
    load("DIAMOND/2.0.13-GCC-11.2.0")
end

if not ( isloaded("prodigal/2.6.3-GCCcore-11.2.0") ) then
    load("prodigal/2.6.3-GCCcore-11.2.0")
end

if not ( isloaded("wget/1.21.2-GCCcore-11.2.0") ) then
    load("wget/1.21.2-GCCcore-11.2.0")
end

if not ( isloaded("MMseqs2/13-45111-gompi-2021b") ) then
    load("MMseqs2/13-45111-gompi-2021b")
end

if not ( isloaded("XlsxWriter/3.0.2-GCCcore-11.2.0") ) then
    load("XlsxWriter/3.0.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEGGNOGMINMAPPER", root)
setenv("EBVERSIONEGGNOGMINMAPPER", "2.1.7")
setenv("EBDEVELEGGNOGMINMAPPER", pathJoin(root, "logs/eggnog-mapper-2.1.7-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
