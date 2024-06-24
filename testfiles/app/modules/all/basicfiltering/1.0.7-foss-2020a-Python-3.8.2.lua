help([==[

Description
===========
Basic Filtering for; Variant Allele Frequency, Variat Reads, tumor-Normal Variant Allele Frequencey Ratio.


More information
================
 - Homepage: https://github.com/rhshah/basicfiltering


Included extensions
===================
basicfiltering-1.0.7, codecov-2.1.8, coloredlogs-14.0, coverage-5.2.1,
humanfriendly-8.2, PyVCF-0.6.8
]==])

whatis([==[Description: Basic Filtering for; Variant Allele Frequency, Variat Reads, tumor-Normal Variant Allele Frequencey Ratio.]==])
whatis([==[Homepage: https://github.com/rhshah/basicfiltering]==])
whatis([==[URL: https://github.com/rhshah/basicfiltering]==])
whatis([==[Extensions: basicfiltering-1.0.7, codecov-2.1.8, coloredlogs-14.0, coverage-5.2.1, humanfriendly-8.2, PyVCF-0.6.8]==])

local root = "/app/software/basicfiltering/1.0.7-foss-2020a-Python-3.8.2"

conflict("basicfiltering")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("SciPy-bundle/2020.06-foss-2020a-Python-3.8.2") ) then
    load("SciPy-bundle/2020.06-foss-2020a-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBASICFILTERING", root)
setenv("EBVERSIONBASICFILTERING", "1.0.7")
setenv("EBDEVELBASICFILTERING", pathJoin(root, "logs/basicfiltering-1.0.7-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.1
setenv("EBEXTSLISTBASICFILTERING", "coverage-5.2.1,codecov-2.1.8,humanfriendly-8.2,coloredlogs-14.0,PyVCF-0.6.8,basicfiltering-1.0.7")
