help([[

Description
===========
HOMER (Hypergeometric Optimization of Motif EnRichment) is a suite of tools for Motif Discovery and ChIP-Seq analysis. It is a collection of command line programs for unix-style operating systems written in mostly perl and c++. Homer was primarily written as a de novo motif discovery algorithm that is well suited for finding 8-12 bp motifs in large scale genomics data.


More information
================
 - Homepage: http://homer.ucsd.edu/homer/download.html
]])

whatis([[Description: HOMER (Hypergeometric Optimization of Motif EnRichment) is a suite of tools for Motif Discovery and ChIP-Seq analysis. It is a collection of command line programs for unix-style operating systems written in mostly perl and c++. Homer was primarily written as a de novo motif discovery algorithm that is well suited for finding 8-12 bp motifs in large scale genomics data.]])
whatis([[Homepage: http://homer.ucsd.edu/homer/]])

local root = "/app/software/Homer/4.11-Perl-5.30.0"

conflict("Homer")

if not isloaded("Perl/5.30.0-GCCcore-8.3.0") then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not isloaded("binutils/2.32-GCCcore-8.3.0") then
    load("binutils/2.32-GCCcore-8.3.0")
end

if not isloaded("GCC/8.3.0") then
    load("GCC/8.3.0")
end

if not isloaded("ncurses/6.1-GCCcore-8.3.0") then
	load("ncurses/6.1-GCCcore-8.3.0")
end

if not isloaded("bzip2/1.0.8-GCCcore-8.3.0") then
	load("bzip2/1.0.8-GCCcore-8.3.0")
end

prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHOMER", root)
setenv("EBVERSIONHOMER", "4.11")
setenv("EBDEVELHOMER", pathJoin(root, "/app/easybuild/logs/Homer-v4.9-foss-2016b-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PERL5LIB", pathJoin(root, "bin"))
-- hand Built with vi John Dey 2020-0201 
