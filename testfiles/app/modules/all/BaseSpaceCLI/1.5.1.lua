help([==[

Description
===========
BaseSpace is a powerful website where biologists and informaticians can easily store,
 analyze, and share genetic data. BaseSpace is a commerical product from Illumina.


More information
================
 - Homepage: https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-overview
]==])

whatis([==[Description: BaseSpace is a powerful website where biologists and informaticians can easily store,
 analyze, and share genetic data. BaseSpace is a commerical product from Illumina.]==])
whatis([==[Homepage: https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-overview]==])
whatis([==[URL: https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-overview]==])

local root = "/app/software/BaseSpaceCLI/1.5.1"

conflict("BaseSpaceCLI")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBASESPACECLI", root)
setenv("EBVERSIONBASESPACECLI", "1.5.1")
setenv("EBDEVELBASESPACECLI", pathJoin(root, "logs/BaseSpaceCLI-1.5.1-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.5.1
