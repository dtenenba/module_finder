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

local root = "/app/software/Kalign/3.3.1-GCCcore-10.2.0"

conflict("Kalign")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTKALIGN", root)
setenv("EBVERSIONKALIGN", "3.3.1")
setenv("EBDEVELKALIGN", pathJoin(root, "logs/Kalign-3.3.1-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
