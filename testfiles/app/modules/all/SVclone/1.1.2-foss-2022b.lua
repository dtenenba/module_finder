help([==[

Description
===========
Cluster structural variants of similar cancer cell fraction (CCF).


More information
================
 - Homepage: https://github.com/mcmero/SVclone


Included extensions
===================
pysam-0.19.1, PyVCF3-1.0.3, SVclone-1.1.2
]==])

whatis([==[Description: Cluster structural variants of similar cancer cell fraction (CCF).]==])
whatis([==[Homepage: https://github.com/mcmero/SVclone]==])
whatis([==[URL: https://github.com/mcmero/SVclone]==])
whatis([==[Extensions: pysam-0.19.1, PyVCF3-1.0.3, SVclone-1.1.2]==])

local root = "/app/software/SVclone/1.1.2-foss-2022b"

conflict("SVclone")

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
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSVCLONE", root)
setenv("EBVERSIONSVCLONE", "1.1.2")
setenv("EBDEVELSVCLONE", pathJoin(root, "logs/SVclone-1.1.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.2
setenv("EBEXTSLISTSVCLONE", "pysam-0.19.1,PyVCF3-1.0.3,SVclone-1.1.2")