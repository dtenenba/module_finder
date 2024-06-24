help([==[

Description
===========
Perl binding for libxml2


More information
================
 - Homepage: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod


Included extensions
===================
Alien::Base-2.46, Alien::Libxml2-0.17, File::chdir-0.1010, XML::LibXML-2.0207
]==])

whatis([==[Description: Perl binding for libxml2]==])
whatis([==[Homepage: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod]==])
whatis([==[URL: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod]==])
whatis([==[Extensions: Alien::Base-2.46, Alien::Libxml2-0.17, File::chdir-0.1010, XML::LibXML-2.0207]==])

local root = "/app/software/XML-LibXML/2.0207-GCCcore-11.2.0"

conflict("XML-LibXML")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
setenv("EBROOTXMLMINLIBXML", root)
setenv("EBVERSIONXMLMINLIBXML", "2.0207")
setenv("EBDEVELXMLMINLIBXML", pathJoin(root, "logs/XML-LibXML-2.0207-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.34.0/"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTXMLMINLIBXML", "File::chdir-0.1010,Alien::Base-2.46,Alien::Libxml2-0.17,XML::LibXML-2.0207")
