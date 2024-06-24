help([==[

Description
===========
MiXCR processes big immunome data from raw sequences 
to quantitated clonotypes


More information
================
 - Homepage: https://milaboratory.com/software/mixcr/
]==])

whatis([==[Description:  MiXCR processes big immunome data from raw sequences 
to quantitated clonotypes ]==])
whatis([==[Homepage: https://milaboratory.com/software/mixcr/]==])

local root = "/app/software/MiXCR/3.0.3-Java-1.8"

conflict("MiXCR")

if not isloaded("Java/1.8") then
    load("Java/1.8")
end

prepend_path("CLASSPATH", pathJoin(root, "mixcr.jar"))
setenv("EBROOTMIXCR", root)
setenv("EBVERSIONMIXCR", "3.0.3")
setenv("EBDEVELMIXCR", pathJoin(root, "/app/logs/MiXCR-3.0.3-Java-1.8-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 3.8.0
