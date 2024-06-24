help([==[

Description
===========
Larry Wall's Practical Extraction and Report Language


More information
================
 - Homepage: https://www.perl.org/


Included extensions
===================
Config::IniFiles-3.000003, ExtUtils::PkgConfig-1.16, GD-2.76, GD::Graph-1.54,
GD::Text-0.86
]==])

whatis([==[Description: Larry Wall's Practical Extraction and Report Language]==])
whatis([==[Homepage: https://www.perl.org/]==])
whatis([==[URL: https://www.perl.org/]==])
whatis([==[Extensions: Config::IniFiles-3.000003, ExtUtils::PkgConfig-1.16, GD-2.76, GD::Graph-1.54, GD::Text-0.86]==])

local root = "/app/software/fhPerl/5.34.0-GCCcore-11.2.0"

conflict("fhPerl")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-11.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-11.2.0")
end

if not ( isloaded("libgd/2.3.3-GCCcore-11.2.0") ) then
    load("libgd/2.3.3-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("pkg-config/0.29.2-GCCcore-11.2.0") ) then
    load("pkg-config/0.29.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFHPERL", root)
setenv("EBVERSIONFHPERL", "5.34.0")
setenv("EBDEVELFHPERL", pathJoin(root, "logs/fhPerl-5.34.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.34.0"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.34.0/x86_64-linux-thread-multi"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTFHPERL", "ExtUtils::PkgConfig-1.16,GD-2.76,GD::Text-0.86,GD::Graph-1.54,Config::IniFiles-3.000003")
