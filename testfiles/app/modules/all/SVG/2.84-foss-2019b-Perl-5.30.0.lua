help([==[

Description
===========
Perl binding for SVG


More information
================
 - Homepage: https://metacpan.org/pod/SVG
]==])

whatis([==[Description: Perl binding for SVG]==])
whatis([==[Homepage: https://metacpan.org/pod/SVG]==])
whatis([==[URL: https://metacpan.org/pod/SVG]==])

local root = "/app/software/SVG/2.84-foss-2019b-Perl-5.30.0"

conflict("SVG")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.30.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.30.0"))
setenv("EBROOTSVG", root)
setenv("EBVERSIONSVG", "2.84")
setenv("EBDEVELSVG", pathJoin(root, "logs/SVG-2.84-foss-2019b-Perl-5.30.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
