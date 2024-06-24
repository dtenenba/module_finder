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
 - Homepage: https://meme-suite.org/meme/index.html
]==])

whatis([==[Description: The MEME Suite allows you to: * discover motifs using MEME, DREME (DNA only) or
 GLAM2 on groups of related DNA or protein sequences, * search sequence databases with motifs using
 MAST, FIMO, MCAST or GLAM2SCAN, * compare a motif to all motifs in a database of motifs, * associate
 motifs with Gene Ontology terms via their putative target genes, and * analyse motif enrichment
 using SpaMo or CentriMo.]==])
whatis([==[Homepage: https://meme-suite.org/meme/index.html]==])
whatis([==[URL: https://meme-suite.org/meme/index.html]==])

local root = "/app/software/MEME/5.5.1-gompi-2021b"

conflict("MEME")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-11.2.0") ) then
    load("libxslt/1.1.34-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Ghostscript/9.54.0-GCCcore-11.2.0") ) then
    load("Ghostscript/9.54.0-GCCcore-11.2.0")
end

if not ( isloaded("XML-Compile/1.63-GCCcore-11.2.0") ) then
    load("XML-Compile/1.63-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMEME", root)
setenv("EBVERSIONMEME", "5.5.1")
setenv("EBDEVELMEME", pathJoin(root, "logs/MEME-5.5.1-gompi-2021b-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "libexec/meme-5.5.1"))
prepend_path("PERL5LIB", pathJoin(root, "lib/meme-5.5.1/perl"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/meme-5.5.1/python"))
-- Built with EasyBuild version 4.7.1
