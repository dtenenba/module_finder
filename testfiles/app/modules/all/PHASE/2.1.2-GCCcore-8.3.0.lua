help([==[

Description
===========
PHASE is a program implementing the method for reconstructing haplotypes
 from population data


More information
================
 - Homepage: http://stephenslab.uchicago.edu/phase/download.html
]==])

whatis([==[Description: PHASE is a program implementing the method for reconstructing haplotypes
 from population data]==])
whatis([==[Homepage: http://stephenslab.uchicago.edu/phase/download.html]==])
whatis([==[URL: http://stephenslab.uchicago.edu/phase/download.html]==])

local root = "/app/software/PHASE/2.1.2-GCCcore-8.3.0"

conflict("PHASE")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPHASE", root)
setenv("EBVERSIONPHASE", "2.1.2")
setenv("EBDEVELPHASE", pathJoin(root, "logs/PHASE-2.1.2-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
