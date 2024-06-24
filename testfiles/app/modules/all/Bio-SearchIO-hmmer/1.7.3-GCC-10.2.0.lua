help([==[

Description
===========
Code to parse output from hmmsearch, hmmscan, phmmer and nhmmer, compatible
with both version 2 and version 3 of the HMMER package from http://hmmer.org.


More information
================
 - Homepage: https://metacpan.org/pod/Bio::SearchIO::hmmer3
]==])

whatis([==[Description: Code to parse output from hmmsearch, hmmscan, phmmer and nhmmer, compatible
with both version 2 and version 3 of the HMMER package from http://hmmer.org.]==])
whatis([==[Homepage: https://metacpan.org/pod/Bio::SearchIO::hmmer3]==])
whatis([==[URL: https://metacpan.org/pod/Bio::SearchIO::hmmer3]==])

local root = "/app/software/Bio-SearchIO-hmmer/1.7.3-GCC-10.2.0"

conflict("Bio-SearchIO-hmmer")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-10.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0"))
setenv("EBROOTBIOMINSEARCHIOMINHMMER", root)
setenv("EBVERSIONBIOMINSEARCHIOMINHMMER", "1.7.3")
setenv("EBDEVELBIOMINSEARCHIOMINHMMER", pathJoin(root, "logs/Bio-SearchIO-hmmer-1.7.3-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
