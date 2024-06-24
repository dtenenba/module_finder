help([==[

Description
===========
Kalign is a fast multiple sequence alignment program for biological sequences.


More information
================
 - Homepage: https://github.com/TimoLassmann/kalign
]==])

whatis([==[Description: Kalign is a fast multiple sequence alignment program for biological sequences.]==])
whatis([==[Homepage: https://github.com/TimoLassmann/kalign]==])
whatis([==[URL: https://github.com/TimoLassmann/kalign]==])

local root = "/app/software/Kalign/3.3.5-GCCcore-11.3.0"

conflict("Kalign")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKALIGN", root)
setenv("EBVERSIONKALIGN", "3.3.5")
setenv("EBDEVELKALIGN", pathJoin(root, "logs/Kalign-3.3.5-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
