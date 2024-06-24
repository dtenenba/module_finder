help([==[

Description
===========
Mining CRISPRs in Environmental Datasets


More information
================
 - Homepage: https://github.com/ctSkennerton/minced
]==])

whatis([==[Description: Mining CRISPRs in Environmental Datasets]==])
whatis([==[Homepage: https://github.com/ctSkennerton/minced]==])
whatis([==[URL: https://github.com/ctSkennerton/minced]==])

local root = "/app/software/MinCED/0.4.2-GCCcore-8.3.0-Java-11"

conflict("MinCED")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMINCED", root)
setenv("EBVERSIONMINCED", "0.4.2")
setenv("EBDEVELMINCED", pathJoin(root, "logs/MinCED-0.4.2-GCCcore-8.3.0-Java-11-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
