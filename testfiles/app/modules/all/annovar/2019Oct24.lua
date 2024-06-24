help([==[

Description
===========
ANNOVAR is an efficient software tool to utilize update-to-date
 information to functionally annotate genetic variants detected from diverse
 genomes (including human genome hg18, hg19, hg38, as well as mouse, worm, fly,
 yeast and many others).


More information
================
 - Homepage: http://annovar.openbioinformatics.org/en/latest/
]==])

whatis([==[Description: ANNOVAR is an efficient software tool to utilize update-to-date
 information to functionally annotate genetic variants detected from diverse
 genomes (including human genome hg18, hg19, hg38, as well as mouse, worm, fly,
 yeast and many others).]==])
whatis([==[Homepage: http://annovar.openbioinformatics.org/en/latest/]==])

local root = "/app/software/annovar/2019Oct24"

conflict("annovar")

if not ( isloaded("Perl/5.28.0-GCCcore-7.3.0") ) then
    load("Perl/5.28.0-GCCcore-7.3.0")
end

setenv("EBROOTANNOVAR", root)
setenv("EBVERSIONANNOVAR", "2019Oct24")
setenv("EBDEVELANNOVAR", pathJoin(root, "logs/annovar-2019Oct24-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.9.0
