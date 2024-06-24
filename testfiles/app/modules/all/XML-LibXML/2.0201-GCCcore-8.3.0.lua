help([==[

Description
===========
Perl binding for libxml2


More information
================
 - Homepage: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod


Included extensions
===================
Alien::Base-1.86, Alien::Libxml2-0.09, File::chdir-0.1010, XML::LibXML-2.0201
]==])

whatis([==[Description: Perl binding for libxml2]==])
whatis([==[Homepage: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod]==])
whatis([==[URL: https://metacpan.org/pod/distribution/XML-LibXML/LibXML.pod]==])
whatis([==[Extensions: Alien::Base-1.86, Alien::Libxml2-0.09, File::chdir-0.1010, XML::LibXML-2.0201]==])

local root = "/app/software/XML-LibXML/2.0201-GCCcore-8.3.0"

conflict("XML-LibXML")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
setenv("EBROOTXMLMINLIBXML", root)
setenv("EBVERSIONXMLMINLIBXML", "2.0201")
setenv("EBDEVELXMLMINLIBXML", pathJoin(root, "logs/XML-LibXML-2.0201-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.30.0/"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTXMLMINLIBXML", "File::chdir-0.1010,Alien::Base-1.86,Alien::Libxml2-0.09,XML::LibXML-2.0201")
