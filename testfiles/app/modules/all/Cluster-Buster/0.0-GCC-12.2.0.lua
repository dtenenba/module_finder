help([==[

Description
===========
Cluster-Buster is a program for finding interesting functional regions,
 such as transcriptional enhancers, in DNA sequences.


More information
================
 - Homepage: https://github.com/weng-lab/cluster-buster
]==])

whatis([==[Description: Cluster-Buster is a program for finding interesting functional regions,
 such as transcriptional enhancers, in DNA sequences.]==])
whatis([==[Homepage: https://github.com/weng-lab/cluster-buster]==])
whatis([==[URL: https://github.com/weng-lab/cluster-buster]==])

local root = "/app/software/Cluster-Buster/0.0-GCC-12.2.0"

conflict("Cluster-Buster")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCLUSTERMINBUSTER", root)
setenv("EBVERSIONCLUSTERMINBUSTER", "0.0")
setenv("EBDEVELCLUSTERMINBUSTER", pathJoin(root, "logs/Cluster-Buster-0.0-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
