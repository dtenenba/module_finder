help([==[

Description
===========
velocyto (velox + κύτος, quick cell) is a package for the analysis of expression dynamics in single cell RNA seq data. In particular, it enables estimations of RNA velocities of single cells by distinguishing unspliced and spliced mRNAs in standard single-cell RNA sequencing protocols (see pre-print below for more information).


More information
================
 - Homepage: http://velocyto.org/


Included extensions
===================
Biobase-2.48.0, BiocGenerics-0.34.0, pcaMethods-1.80.0, velocyto.R-0.6
]==])

whatis([==[Description: velocyto (velox + κύτος, quick cell) is a package for the analysis of expression dynamics in single cell RNA seq data. In particular, it enables estimations of RNA velocities of single cells by distinguishing unspliced and spliced mRNAs in standard single-cell RNA sequencing protocols (see pre-print below for more information).]==])
whatis([==[Homepage: http://velocyto.org/]==])
whatis([==[URL: http://velocyto.org/]==])
whatis([==[Extensions: Biobase-2.48.0, BiocGenerics-0.34.0, pcaMethods-1.80.0, velocyto.R-0.6]==])

local root = "/app/software/velocyto.R/0.6-foss-2019b-R-4.0.2"

conflict("velocyto.R")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("R/4.0.2-foss-2019b") ) then
    load("R/4.0.2-foss-2019b")
end

if not ( isloaded("Boost/1.71.0-gompi-2019b") ) then
    load("Boost/1.71.0-gompi-2019b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTVELOCYTOR", root)
setenv("EBVERSIONVELOCYTOR", "0.6")
setenv("EBDEVELVELOCYTOR", pathJoin(root, "logs/velocyto.R-0.6-foss-2019b-R-4.0.2-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTVELOCYTOR", "BiocGenerics-0.34.0,Biobase-2.48.0,pcaMethods-1.80.0,velocyto.R-0.6")
