help([==[

Description
===========
Perl module for compilation based XML processing


More information
================
 - Homepage: https://metacpan.org/pod/XML::Compile


Included extensions
===================
XML::Compile-1.63, XML::Compile::Cache-1.06, XML::Compile::SOAP-3.27,
XML::Compile::WSDL11-3.08, XML::LibXML::Simple-1.01
]==])

whatis([==[Description: Perl module for compilation based XML processing]==])
whatis([==[Homepage: https://metacpan.org/pod/XML::Compile]==])
whatis([==[URL: https://metacpan.org/pod/XML::Compile]==])
whatis([==[Extensions: XML::Compile-1.63, XML::Compile::Cache-1.06, XML::Compile::SOAP-3.27, XML::Compile::WSDL11-3.08, XML::LibXML::Simple-1.01]==])

local root = "/app/software/XML-Compile/1.63-GCCcore-11.2.0"

conflict("XML-Compile")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("XML-LibXML/2.0207-GCCcore-11.2.0") ) then
    load("XML-LibXML/2.0207-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTXMLMINCOMPILE", root)
setenv("EBVERSIONXMLMINCOMPILE", "1.63")
setenv("EBDEVELXMLMINCOMPILE", pathJoin(root, "logs/XML-Compile-1.63-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.34.0/"))
-- Built with EasyBuild version 4.7.1
setenv("EBEXTSLISTXMLMINCOMPILE", "XML::LibXML::Simple-1.01,XML::Compile-1.63,XML::Compile::Cache-1.06,XML::Compile::SOAP-3.27,XML::Compile::WSDL11-3.08")
