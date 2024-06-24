help([==[

Description
===========
Ultrafast consensus module for raw de novo genome assembly of long uncorrected reads.


More information
================
 - Homepage: https://github.com/lbcb-sci/racon
]==])

whatis([==[Description: Ultrafast consensus module for raw de novo genome assembly of long uncorrected reads.]==])
whatis([==[Homepage: https://github.com/lbcb-sci/racon]==])
whatis([==[URL: https://github.com/lbcb-sci/racon]==])

local root = "/app/software/Racon/1.4.13-GCCcore-8.3.0"

conflict("Racon")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRACON", root)
setenv("EBVERSIONRACON", "1.4.13")
setenv("EBDEVELRACON", pathJoin(root, "logs/Racon-1.4.13-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
