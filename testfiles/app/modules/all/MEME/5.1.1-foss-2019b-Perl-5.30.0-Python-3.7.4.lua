help([==[

Description
===========
The MEME Suite allows you to: * discover motifs using MEME, DREME (DNA only) or
  GLAM2 on groups of related DNA or protein sequences, * search sequence databases with motifs using
  MAST, FIMO, MCAST or GLAM2SCAN, * compare a motif to all motifs in a database of motifs, * associate
  motifs with Gene Ontology terms via their putative target genes, and * analyse motif enrichment
  using SpaMo or CentriMo.


More information
================
 - Homepage: http://meme-suite.org/
]==])

whatis([==[Description: The MEME Suite allows you to: * discover motifs using MEME, DREME (DNA only) or
  GLAM2 on groups of related DNA or protein sequences, * search sequence databases with motifs using
  MAST, FIMO, MCAST or GLAM2SCAN, * compare a motif to all motifs in a database of motifs, * associate
  motifs with Gene Ontology terms via their putative target genes, and * analyse motif enrichment
  using SpaMo or CentriMo.]==])
whatis([==[Homepage: http://meme-suite.org/]==])
whatis([==[URL: http://meme-suite.org/]==])

local root = "/app/software/MEME/5.1.1-foss-2019b-Perl-5.30.0-Python-3.7.4"

conflict("MEME")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-8.3.0") ) then
    load("libxslt/1.1.34-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMEME", root)
setenv("EBVERSIONMEME", "5.1.1")
setenv("EBDEVELMEME", pathJoin(root, "logs/MEME-5.1.1-foss-2019b-Perl-5.30.0-Python-3.7.4-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
