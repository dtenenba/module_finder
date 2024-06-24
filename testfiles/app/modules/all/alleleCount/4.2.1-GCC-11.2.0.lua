help([==[

Description
===========
The alleleCount package primarily exists to prevent code duplication
between some other projects, specifically AscatNGS and Battenberg. As of v4 the perl 
code wraps the C implementation of allele counting code for BAM/CRAM processing.


More information
================
 - Homepage: http://cancerit.github.io/alleleCount/
]==])

whatis([==[Description:  The alleleCount package primarily exists to prevent code duplication
between some other projects, specifically AscatNGS and Battenberg. As of v4 the perl 
code wraps the C implementation of allele counting code for BAM/CRAM processing. ]==])
whatis([==[Homepage: http://cancerit.github.io/alleleCount/]==])
whatis([==[URL: http://cancerit.github.io/alleleCount/]==])

local root = "/app/software/alleleCount/4.2.1-GCC-11.2.0"

conflict("alleleCount")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("HTSlib/1.14-GCC-11.2.0") ) then
    load("HTSlib/1.14-GCC-11.2.0")
end

if not ( isloaded("libdeflate/1.8-GCCcore-11.2.0") ) then
    load("libdeflate/1.8-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTALLELECOUNT", root)
setenv("EBVERSIONALLELECOUNT", "4.2.1")
setenv("EBDEVELALLELECOUNT", pathJoin(root, "logs/alleleCount-4.2.1-GCC-11.2.0-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5"))
-- Built with EasyBuild version 4.6.0
