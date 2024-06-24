help([==[

Description
===========
AGAT: Another GTF/GFF Analysis Toolkit. Suite of tools to handle gene annotations
 in any GTF/GFF format.


More information
================
 - Homepage: https://agat.readthedocs.io/en/latest/


Included extensions
===================
AGAT-0.9.2, Class::MethodMaker-2.24, File::Share-0.27, Set::Object-1.42,
Sort::Naturally-1.03, Term::ProgressBar-2.22
]==])

whatis([==[Description: AGAT: Another GTF/GFF Analysis Toolkit. Suite of tools to handle gene annotations
 in any GTF/GFF format.]==])
whatis([==[Homepage: https://agat.readthedocs.io/en/latest/]==])
whatis([==[URL: https://agat.readthedocs.io/en/latest/]==])
whatis([==[Extensions: AGAT-0.9.2, Class::MethodMaker-2.24, File::Share-0.27, Set::Object-1.42, Sort::Naturally-1.03, Term::ProgressBar-2.22]==])

local root = "/app/software/AGAT/0.9.2-GCC-11.2.0"

conflict("AGAT")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-11.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAGAT", root)
setenv("EBVERSIONAGAT", "0.9.2")
setenv("EBDEVELAGAT", pathJoin(root, "logs/AGAT-0.9.2-GCC-11.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.34.0/"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTAGAT", "Set::Object-1.42,File::Share-0.27,Sort::Naturally-1.03,Class::MethodMaker-2.24,Term::ProgressBar-2.22,AGAT-0.9.2")
