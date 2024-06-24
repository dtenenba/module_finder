help([==[

Description
===========
Read files using HTSlib including BAM/CRAM, Tabix and BCF database files


More information
================
 - Homepage: https://metacpan.org/release/Bio-DB-HTS
]==])

whatis([==[Description: Read files using HTSlib including BAM/CRAM, Tabix and BCF database files]==])
whatis([==[Homepage: https://metacpan.org/release/Bio-DB-HTS]==])
whatis([==[URL: https://metacpan.org/release/Bio-DB-HTS]==])

local root = "/app/software/Bio-DB-HTS/3.01-GCC-10.2.0"

conflict("Bio-DB-HTS")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("Perl/5.32.0-GCCcore-10.2.0") ) then
    load("Perl/5.32.0-GCCcore-10.2.0")
end

if not ( isloaded("BioPerl/1.7.8-GCCcore-10.2.0") ) then
    load("BioPerl/1.7.8-GCCcore-10.2.0")
end

if not ( isloaded("HTSlib/1.11-GCC-10.2.0") ) then
    load("HTSlib/1.11-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PERL5LIB", root)
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0/x86_64-linux-thread-multi"))
prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.32.0"))
setenv("EBROOTBIOMINDBMINHTS", root)
setenv("EBVERSIONBIOMINDBMINHTS", "3.01")
setenv("EBDEVELBIOMINDBMINHTS", pathJoin(root, "logs/Bio-DB-HTS-3.01-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
