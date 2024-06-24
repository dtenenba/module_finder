help([==[

Description
===========
STAR-Fusion uses the STAR aligner to identify candidate fusion transcripts
 supported by Illumina reads. STAR-Fusion further processes the output generated by the STAR aligner
 to map junction reads and spanning reads to a reference annotation set.


More information
================
 - Homepage: https://github.com/STAR-Fusion/STAR-Fusion


Included extensions
===================
DB_File-1.835, Set::IntervalTree-0.10
]==])

whatis([==[Description: STAR-Fusion uses the STAR aligner to identify candidate fusion transcripts
 supported by Illumina reads. STAR-Fusion further processes the output generated by the STAR aligner
 to map junction reads and spanning reads to a reference annotation set.]==])
whatis([==[Homepage: https://github.com/STAR-Fusion/STAR-Fusion]==])
whatis([==[URL: https://github.com/STAR-Fusion/STAR-Fusion]==])
whatis([==[Extensions: DB_File-1.835, Set::IntervalTree-0.10]==])

local root = "/app/software/STAR-Fusion/1.9.0-foss-2019b-Perl-5.30.0"

conflict("STAR-Fusion")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("STAR/2.7.3a-foss-2019b") ) then
    load("STAR/2.7.3a-foss-2019b")
end

if not ( isloaded("DB/18.1.32-GCCcore-8.3.0") ) then
    load("DB/18.1.32-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
setenv("EBROOTSTARMINFUSION", root)
setenv("EBVERSIONSTARMINFUSION", "1.9.0")
setenv("EBDEVELSTARMINFUSION", pathJoin(root, "logs/STAR-Fusion-1.9.0-foss-2019b-Perl-5.30.0-easybuild-devel"))

prepend_path("PATH", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.30.0/"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTSTARMINFUSION", "Set::IntervalTree-0.10,DB_File-1.835")
