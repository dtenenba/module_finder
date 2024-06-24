help([==[

Description
===========
Model Based Analysis for ChIP-Seq data


More information
================
 - Homepage: https://github.com/taoliu/MACS
]==])

whatis([==[Description: Model Based Analysis for ChIP-Seq data]==])
whatis([==[Homepage: https://github.com/taoliu/MACS]==])
whatis([==[URL: https://github.com/taoliu/MACS]==])

local root = "/app/software/MACS2/2.2.9.1-foss-2022b"

conflict("MACS2")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMACS2", root)
setenv("EBVERSIONMACS2", "2.2.9.1")
setenv("EBDEVELMACS2", pathJoin(root, "logs/MACS2-2.2.9.1-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
