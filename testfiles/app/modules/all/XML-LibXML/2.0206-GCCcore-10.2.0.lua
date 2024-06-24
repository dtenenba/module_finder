help([==[

Description
===========
Perl binding for libxml2


More information
================
 - Homepage: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod


Included extensions
===================
Alien::Base-2.38, Alien::Libxml2-0.17, File::chdir-0.1010, XML::LibXML-2.0206
]==])

whatis([==[Description: Perl binding for libxml2]==])
whatis([==[Homepage: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod]==])
whatis([==[URL: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod]==])
whatis([==[Extensions: Alien::Base-2.38, Alien::Libxml2-0.17, File::chdir-0.1010, XML::LibXML-2.0206]==])

local root = "/app/software/XML-LibXML/2.0206-GCCcore-10.2.0"

conflict("XML-LibXML")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
setenv("EBROOTXMLMINLIBXML", root)
setenv("EBVERSIONXMLMINLIBXML", "2.0206")
setenv("EBDEVELXMLMINLIBXML", pathJoin(root, "logs/XML-LibXML-2.0206-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0/"))
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTXMLMINLIBXML", "File::chdir-0.1010,Alien::Base-2.38,Alien::Libxml2-0.17,XML::LibXML-2.0206")
