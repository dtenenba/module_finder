help([==[

Description
===========
Bioperl is the product of a community effort to produce Perl code which is useful in biology.
 Examples include Sequence objects, Alignment objects and database searching objects.


More information
================
 - Homepage: http://www.bioperl.org/
]==])

whatis([==[Description: Bioperl is the product of a community effort to produce Perl code which is useful in biology.
 Examples include Sequence objects, Alignment objects and database searching objects.]==])
whatis([==[Homepage: http://www.bioperl.org/]==])
whatis([==[URL: http://www.bioperl.org/]==])

local root = "/app/software/BioPerl/1.7.2-GCCcore-8.3.0"

conflict("BioPerl")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("XML-LibXML/2.0201-GCCcore-8.3.0") ) then
    load("XML-LibXML/2.0201-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.30.0"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.30.0/x86_64-linux-thread-multi"))
setenv("EBROOTBIOPERL", root)
setenv("EBVERSIONBIOPERL", "1.7.2")
setenv("EBDEVELBIOPERL", pathJoin(root, "logs/BioPerl-1.7.2-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
