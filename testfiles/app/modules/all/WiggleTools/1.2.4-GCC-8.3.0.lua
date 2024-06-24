help([==[

Description
===========
The WiggleTools package allows genomewide data files to be manipulated as numerical functions, equipped with all the standard functional analysis operators (sum, product, product by a scalar, comparators), and derived statistics (mean, median, variance, stddev, t-test, Wilcoxon's rank sum test, etc).


More information
================
 - Homepage: 
]==])

whatis([==[Description: The WiggleTools package allows genomewide data files to be manipulated as numerical functions, equipped with all the standard functional analysis operators (sum, product, product by a scalar, comparators), and derived statistics (mean, median, variance, stddev, t-test, Wilcoxon's rank sum test, etc).]==])
whatis([==[Homepage: ]==])
whatis([==[URL: ]==])

local root = "/app/software/WiggleTools/1.2.4-GCC-8.3.0"

conflict("WiggleTools")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("HTSlib/1.10.2-GCC-8.3.0") ) then
    load("HTSlib/1.10.2-GCC-8.3.0")
end

if not ( isloaded("BCFtools/1.9-GCC-8.3.0") ) then
    load("BCFtools/1.9-GCC-8.3.0")
end

if not ( isloaded("libBigWig/0.4.4-GCCcore-8.3.0") ) then
    load("libBigWig/0.4.4-GCCcore-8.3.0")
end

if not ( isloaded("GSL/2.6-GCC-8.3.0") ) then
    load("GSL/2.6-GCC-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWIGGLETOOLS", root)
setenv("EBVERSIONWIGGLETOOLS", "1.2.4")
setenv("EBDEVELWIGGLETOOLS", pathJoin(root, "logs/WiggleTools-1.2.4-GCC-8.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "bin"))
-- Built with EasyBuild version 4.3.1
