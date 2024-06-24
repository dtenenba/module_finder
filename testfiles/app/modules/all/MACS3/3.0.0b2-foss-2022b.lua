help([==[

Description
===========
Model Based Analysis for ChIP-Seq data


More information
================
 - Homepage: https://macs3-project.github.io/MACS/


Included extensions
===================
cykhash-2.0.1, hmmlearn-0.3.0, MACS3-3.0.0b2
]==])

whatis([==[Description: Model Based Analysis for ChIP-Seq data]==])
whatis([==[Homepage: https://macs3-project.github.io/MACS/]==])
whatis([==[URL: https://macs3-project.github.io/MACS/]==])
whatis([==[Extensions: cykhash-2.0.1, hmmlearn-0.3.0, MACS3-3.0.0b2]==])

local root = "/app/software/MACS3/3.0.0b2-foss-2022b"

conflict("MACS3")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("scikit-learn/1.2.1-gfbf-2022b") ) then
    load("scikit-learn/1.2.1-gfbf-2022b")
end

if not ( isloaded("matplotlib/3.7.0-gfbf-2022b") ) then
    load("matplotlib/3.7.0-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMACS3", root)
setenv("EBVERSIONMACS3", "3.0.0b2")
setenv("EBDEVELMACS3", pathJoin(root, "logs/MACS3-3.0.0b2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTMACS3", "cykhash-2.0.1,hmmlearn-0.3.0,MACS3-3.0.0b2")
