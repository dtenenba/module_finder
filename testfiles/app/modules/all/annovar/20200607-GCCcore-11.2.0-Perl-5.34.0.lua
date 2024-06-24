help([==[

Description
===========
ANNOVAR is an efficient software tool to utilize update-to-date information 
to functionally annotate genetic variants detected from diverse genomes (including human 
genome hg18, hg19, hg38, as well as mouse, worm, fly, yeast and many others).


More information
================
 - Homepage: http://annovar.openbioinformatics.org/en/latest/
]==])

whatis([==[Description: ANNOVAR is an efficient software tool to utilize update-to-date information 
to functionally annotate genetic variants detected from diverse genomes (including human 
genome hg18, hg19, hg38, as well as mouse, worm, fly, yeast and many others).]==])
whatis([==[Homepage: http://annovar.openbioinformatics.org/en/latest/]==])
whatis([==[URL: http://annovar.openbioinformatics.org/en/latest/]==])

local root = "/app/software/annovar/20200607-GCCcore-11.2.0-Perl-5.34.0"

conflict("annovar")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTANNOVAR", root)
setenv("EBVERSIONANNOVAR", "20200607")
setenv("EBDEVELANNOVAR", pathJoin(root, "logs/annovar-20200607-GCCcore-11.2.0-Perl-5.34.0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.6.0
