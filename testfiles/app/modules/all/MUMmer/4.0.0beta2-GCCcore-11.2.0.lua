help([==[

Description
===========
MUMmer is a system for rapidly aligning entire genomes,
 whether in complete or draft form. AMOS makes use of it.


More information
================
 - Homepage: http://mummer.sourceforge.net/
]==])

whatis([==[Description: 
 MUMmer is a system for rapidly aligning entire genomes,
 whether in complete or draft form. AMOS makes use of it.
]==])
whatis([==[Homepage: http://mummer.sourceforge.net/]==])
whatis([==[URL: http://mummer.sourceforge.net/]==])

local root = "/app/software/MUMmer/4.0.0beta2-GCCcore-11.2.0"

conflict("MUMmer")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMUMMER", root)
setenv("EBVERSIONMUMMER", "4.0.0beta2")
setenv("EBDEVELMUMMER", pathJoin(root, "logs/MUMmer-4.0.0beta2-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
