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

local root = "/app/software/MEME/5.4.1-GCC-10.2.0"

conflict("MEME")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-10.2.0") ) then
    load("libxslt/1.1.34-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMEME", root)
setenv("EBVERSIONMEME", "5.4.1")
setenv("EBDEVELMEME", pathJoin(root, "logs/MEME-5.4.1-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
