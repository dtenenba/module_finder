help([==[

Description
===========
Bioconductor provides tools for the analysis and coprehension
 of high-throughput genomic data.


More information
================
 - Homepage: https://bioconductor.org


]==])

whatis([==[Description: Bioconductor provides tools for the analysis and coprehension
 of high-throughput genomic data.]==])
whatis([==[Homepage: https://bioconductor.org]==])
whatis([==[URL: https://bioconductor.org]==])

local root = "/app/software/R-bundle-Bioconductor/3.16-foss-2022b-R-4.2.2"

conflict("R-bundle-Bioconductor")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("R/4.2.2-foss-2022b") ) then
    load("R/4.2.2-foss-2022b")
end

if not ( isloaded("Boost/1.81.0-GCC-12.2.0") ) then
    load("Boost/1.81.0-GCC-12.2.0")
end

if not ( isloaded("GSL/2.7-GCC-12.2.0") ) then
    load("GSL/2.7-GCC-12.2.0")
end

if not ( isloaded("HDF5/1.14.0-gompi-2022b") ) then
    load("HDF5/1.14.0-gompi-2022b")
end

if not ( isloaded("arrow-R/11.0.0.3-foss-2022b-R-4.2.2") ) then
    load("arrow-R/11.0.0.3-foss-2022b-R-4.2.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRMINBUNDLEMINBIOCONDUCTOR", root)
setenv("EBVERSIONRMINBUNDLEMINBIOCONDUCTOR", "3.16")
setenv("EBDEVELRMINBUNDLEMINBIOCONDUCTOR", pathJoin(root, "logs/R-bundle-Bioconductor-3.16-foss-2022b-R-4.2.2-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.9.0
