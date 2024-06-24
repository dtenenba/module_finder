help([==[

Description
===========
Bioperl is the product of a community effort to produce Perl code which is useful in biology.
 Examples include Sequence objects, Alignment objects and database searching objects.


More information
================
 - Homepage: http://www.bioperl.org/


Included extensions
===================
Bio::Procedural-1.7.4, BioPerl-1.7.8, XML::Writer-0.900
]==])

whatis([==[Description: Bioperl is the product of a community effort to produce Perl code which is useful in biology.
 Examples include Sequence objects, Alignment objects and database searching objects.]==])
whatis([==[Homepage: http://www.bioperl.org/]==])
whatis([==[URL: http://www.bioperl.org/]==])
whatis([==[Extensions: Bio::Procedural-1.7.4, BioPerl-1.7.8, XML::Writer-0.900]==])

local root = "/app/software/BioPerl/1.7.8-GCCcore-12.2.0"

conflict("BioPerl")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Perl/5.36.0-GCCcore-12.2.0") ) then
    load("Perl/5.36.0-GCCcore-12.2.0")
end

if not ( isloaded("XML-LibXML/2.0208-GCCcore-12.2.0") ) then
    load("XML-LibXML/2.0208-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.36.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.36.0"))
setenv("EBROOTBIOPERL", root)
setenv("EBVERSIONBIOPERL", "1.7.8")
setenv("EBDEVELBIOPERL", pathJoin(root, "logs/BioPerl-1.7.8-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.36.0/"))
-- Built with EasyBuild version 4.7.2
setenv("EBEXTSLISTBIOPERL", "XML::Writer-0.900,BioPerl-1.7.8,Bio::Procedural-1.7.4")
