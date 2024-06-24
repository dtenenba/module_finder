help([==[

Description
===========
Bioperl is the product of a community effort to produce Perl code which is useful in biology.
 Examples include Sequence objects, Alignment objects and database searching objects.


More information
================
 - Homepage: https://bioperl.org/


Included extensions
===================
Bio::Procedural-1.7.4, BioPerl-1.7.8, XML::DOM::XPath-0.14, XML::Writer-0.900
]==])

whatis([==[Description: Bioperl is the product of a community effort to produce Perl code which is useful in biology.
 Examples include Sequence objects, Alignment objects and database searching objects.]==])
whatis([==[Homepage: https://bioperl.org/]==])
whatis([==[URL: https://bioperl.org/]==])
whatis([==[Extensions: Bio::Procedural-1.7.4, BioPerl-1.7.8, XML::DOM::XPath-0.14, XML::Writer-0.900]==])

local root = "/app/software/BioPerl/1.7.8-GCCcore-11.2.0"

conflict("BioPerl")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("XML-LibXML/2.0207-GCCcore-11.2.0") ) then
    load("XML-LibXML/2.0207-GCCcore-11.2.0")
end

if not ( isloaded("DB_File/1.857-GCCcore-11.2.0") ) then
    load("DB_File/1.857-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBIOPERL", root)
setenv("EBVERSIONBIOPERL", "1.7.8")
setenv("EBDEVELBIOPERL", pathJoin(root, "logs/BioPerl-1.7.8-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.34.0/"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTBIOPERL", "XML::Writer-0.900,XML::DOM::XPath-0.14,Bio::Procedural-1.7.4,BioPerl-1.7.8")
