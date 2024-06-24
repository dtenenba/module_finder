help([==[

Description
===========
MUMmer is a system for rapidly aligning entire genomes,
 whether in complete or draft form. AMOS makes use of it.


More information
================
 - Homepage: https://github.com/mummer4/mummer
]==])

whatis([==[Description: MUMmer is a system for rapidly aligning entire genomes,
 whether in complete or draft form. AMOS makes use of it.]==])
whatis([==[Homepage: https://github.com/mummer4/mummer]==])
whatis([==[URL: https://github.com/mummer4/mummer]==])

local root = "/app/software/MUMmer/4.0.0beta2-foss-2020a"

conflict("MUMmer")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMUMMER", root)
setenv("EBVERSIONMUMMER", "4.0.0beta2")
setenv("EBDEVELMUMMER", pathJoin(root, "logs/MUMmer-4.0.0beta2-foss-2020a-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
