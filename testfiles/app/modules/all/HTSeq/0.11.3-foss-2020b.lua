help([==[

Description
===========
HTSeq is a Python library to facilitate processing and analysis
 of data from high-throughput sequencing (HTS) experiments.


More information
================
 - Homepage: https://github.com/simon-anders/htseq
]==])

whatis([==[Description: HTSeq is a Python library to facilitate processing and analysis
 of data from high-throughput sequencing (HTS) experiments.]==])
whatis([==[Homepage: https://github.com/simon-anders/htseq]==])
whatis([==[URL: https://github.com/simon-anders/htseq]==])

local root = "/app/software/HTSeq/0.11.3-foss-2020b"

conflict("HTSeq")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Pysam/0.16.0.1-GCC-10.2.0") ) then
    load("Pysam/0.16.0.1-GCC-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("matplotlib/3.3.3-foss-2020b") ) then
    load("matplotlib/3.3.3-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHTSEQ", root)
setenv("EBVERSIONHTSEQ", "0.11.3")
setenv("EBDEVELHTSEQ", pathJoin(root, "logs/HTSeq-0.11.3-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.9.1
