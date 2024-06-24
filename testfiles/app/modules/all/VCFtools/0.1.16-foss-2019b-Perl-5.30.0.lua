help([==[

Description
===========
The aim of VCFtools is to provide
 easily accessible methods for working with complex
 genetic variation data in the form of VCF files.


More information
================
 - Homepage: https://vcftools.github.io
]==])

whatis([==[Description: The aim of VCFtools is to provide
 easily accessible methods for working with complex
 genetic variation data in the form of VCF files.]==])
whatis([==[Homepage: https://vcftools.github.io]==])
whatis([==[URL: https://vcftools.github.io]==])

local root = "/app/software/VCFtools/0.1.16-foss-2019b-Perl-5.30.0"

conflict("VCFtools")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Perl/5.30.0-GCCcore-8.3.0") ) then
    load("Perl/5.30.0-GCCcore-8.3.0")
end

if not ( isloaded("tabix/0.2.6-GCCcore-8.3.0") ) then
    load("tabix/0.2.6-GCCcore-8.3.0")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTVCFTOOLS", root)
setenv("EBVERSIONVCFTOOLS", "0.1.16")
setenv("EBDEVELVCFTOOLS", pathJoin(root, "logs/VCFtools-0.1.16-foss-2019b-Perl-5.30.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl"))
-- Built with EasyBuild version 4.2.1
