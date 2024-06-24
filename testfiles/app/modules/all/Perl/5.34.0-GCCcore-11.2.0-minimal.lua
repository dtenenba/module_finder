help([==[

Description
===========
Larry Wall's Practical Extraction and Report Language

This is a minimal build without any modules. Should only be used for build dependencies.


More information
================
 - Homepage: https://www.perl.org/
]==])

whatis([==[Description: Larry Wall's Practical Extraction and Report Language

This is a minimal build without any modules. Should only be used for build dependencies.
]==])
whatis([==[Homepage: https://www.perl.org/]==])
whatis([==[URL: https://www.perl.org/]==])

local root = "/app/software/Perl/5.34.0-GCCcore-11.2.0-minimal"

conflict("Perl")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPERL", root)
setenv("EBVERSIONPERL", "5.34.0")
setenv("EBDEVELPERL", pathJoin(root, "logs/Perl-5.34.0-GCCcore-11.2.0-minimal-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
