help([==[

Description
===========
BEDOPS is an open-source command-line toolkit that performs highly efficient and
 scalable Boolean and other set operations, statistical calculations, archiving, conversion and
 other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for
 distributing whole-genome analyses across a computational cluster.


More information
================
 - Homepage: http://bedops.readthedocs.io/en/latest/index.html
]==])

whatis([==[Description: BEDOPS is an open-source command-line toolkit that performs highly efficient and
 scalable Boolean and other set operations, statistical calculations, archiving, conversion and
 other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for
 distributing whole-genome analyses across a computational cluster.]==])
whatis([==[Homepage: http://bedops.readthedocs.io/en/latest/index.html]==])
whatis([==[URL: http://bedops.readthedocs.io/en/latest/index.html]==])

local root = "/app/software/BEDOPS/2.4.41-foss-2021b"

conflict("BEDOPS")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBEDOPS", root)
setenv("EBVERSIONBEDOPS", "2.4.41")
setenv("EBDEVELBEDOPS", pathJoin(root, "logs/BEDOPS-2.4.41-foss-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
