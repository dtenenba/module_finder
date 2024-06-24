help([==[

Description
===========
Model Based Analysis for ChIP-Seq data


More information
================
 - Homepage: https://github.com/taoliu/MACS/
]==])

whatis([==[Description: Model Based Analysis for ChIP-Seq data]==])
whatis([==[Homepage: https://github.com/taoliu/MACS/]==])
whatis([==[URL: https://github.com/taoliu/MACS/]==])

local root = "/app/software/MACS2/2.2.6-foss-2019b-Python-3.7.4"

conflict("MACS2")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2020.04-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2020.04-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMACS2", root)
setenv("EBVERSIONMACS2", "2.2.6")
setenv("EBDEVELMACS2", pathJoin(root, "logs/MACS2-2.2.6-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
