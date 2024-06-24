help([==[

Description
===========
A set of functions to generate high-resolution Venn and Euler plots. Includes handling for several special cases, including two-case scaling, and extensive customization of plot shape and structure.


More information
================
 - Homepage: https://cran.r-project.org/package=VennDiagram


Included extensions
===================
arsenal-3.5.0, compareGroups-4.4.3, flextable-0.5.10, gdtools-0.2.2,
ggVennDiagram-3484e8, haplo.stats-1.8.2, HardyWeinberg-1.6.6,
kableExtra-1.1.0, officer-0.3.12, Rsolnp-1.16, sf-0.9-5, SNPassoc-1.9-2,
systemfonts-0.2.3, truncnorm-1.0-8, writexl-1.3
]==])

whatis([==[Description: A set of functions to generate high-resolution Venn and Euler plots. Includes handling for several special cases, including two-case scaling, and extensive customization of plot shape and structure.]==])
whatis([==[Homepage: https://cran.r-project.org/package=VennDiagram]==])
whatis([==[URL: https://cran.r-project.org/package=VennDiagram]==])
whatis([==[Extensions: arsenal-3.5.0, compareGroups-4.4.3, flextable-0.5.10, gdtools-0.2.2, ggVennDiagram-3484e8, haplo.stats-1.8.2, HardyWeinberg-1.6.6, kableExtra-1.1.0, officer-0.3.12, Rsolnp-1.16, sf-0.9-5, SNPassoc-1.9-2, systemfonts-0.2.3, truncnorm-1.0-8, writexl-1.3]==])

local root = "/app/software/ggVennDiagram/3484e8-foss-2019b-R-4.0.2"

conflict("ggVennDiagram")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

if not ( isloaded("GDAL/3.0.2-foss-2019b-Python-3.7.4") ) then
    load("GDAL/3.0.2-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGGVENNDIAGRAM", root)
setenv("EBVERSIONGGVENNDIAGRAM", "3484e8")
setenv("EBDEVELGGVENNDIAGRAM", pathJoin(root, "logs/ggVennDiagram-3484e8-foss-2019b-R-4.0.2-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTGGVENNDIAGRAM", "sf-0.9-5,arsenal-3.5.0,haplo.stats-1.8.2,SNPassoc-1.9-2,truncnorm-1.0-8,Rsolnp-1.16,HardyWeinberg-1.6.6,kableExtra-1.1.0,writexl-1.3,officer-0.3.12,systemfonts-0.2.3,gdtools-0.2.2,flextable-0.5.10,compareGroups-4.4.3,ggVennDiagram-3484e8")
