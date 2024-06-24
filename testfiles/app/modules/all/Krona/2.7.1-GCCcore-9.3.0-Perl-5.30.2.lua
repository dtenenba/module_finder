help([==[

Description
===========
Krona allows hierarchical data to be explored with zooming, multi-layered pie charts. Krona charts can be created using an Excel template or KronaTools, which includes support for several bioinformatics tools and raw data formats.


More information
================
 - Homepage: https://github.com/marbl/Krona/wiki
]==])

whatis([==[Description: Krona allows hierarchical data to be explored with zooming, multi-layered pie charts. Krona charts can be created using an Excel template or KronaTools, which includes support for several bioinformatics tools and raw data formats.]==])
whatis([==[Homepage: https://github.com/marbl/Krona/wiki]==])
whatis([==[URL: https://github.com/marbl/Krona/wiki]==])

local root = "/app/software/Krona/2.7.1-GCCcore-9.3.0-Perl-5.30.2"

conflict("Krona")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("Perl/5.30.2-GCCcore-9.3.0") ) then
    load("Perl/5.30.2-GCCcore-9.3.0")
end

if not ( isloaded("cURL/7.69.1-GCCcore-9.3.0") ) then
    load("cURL/7.69.1-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKRONA", root)
setenv("EBVERSIONKRONA", "2.7.1")
setenv("EBDEVELKRONA", pathJoin(root, "logs/Krona-2.7.1-GCCcore-9.3.0-Perl-5.30.2-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "KronaTools/scripts"))
prepend_path("PERL5LIB", pathJoin(root, "bin"))
prepend_path("PERL5LIB", pathJoin(root, "KronaTools"))
-- Built with EasyBuild version 4.2.2
