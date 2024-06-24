help([==[

Description
===========
MEGAN is a comprehensive toolbox for interactively analyzing microbiome data


More information
================
 - Homepage: http://megan.informatik.uni-tuebingen.de/
]==])

whatis([==[Description: MEGAN is a comprehensive toolbox for interactively analyzing microbiome data]==])
whatis([==[Homepage: http://megan.informatik.uni-tuebingen.de/]==])
whatis([==[URL: http://megan.informatik.uni-tuebingen.de/]==])

local root = "/app/software/MEGAN/6.25.3-Java-17"

conflict("MEGAN")

if not ( isloaded("Java/17") ) then
    load("Java/17")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTMEGAN", root)
setenv("EBVERSIONMEGAN", "6.25.3")
setenv("EBDEVELMEGAN", pathJoin(root, "logs/MEGAN-6.25.3-Java-17-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "tools"))
prepend_path("PATH", pathJoin(root, "tools/utils"))
prepend_path("PATH", root)
-- Built with EasyBuild version 4.9.1
