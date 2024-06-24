help([==[

Description
===========
Libraries and tools for interacting with Google Cloud products and services.


More information
================
 - Homepage: https://cloud.google.com/sdk
]==])

whatis([==[Description: Libraries and tools for interacting with Google Cloud products and services.]==])
whatis([==[Homepage: https://cloud.google.com/sdk]==])
whatis([==[URL: https://cloud.google.com/sdk]==])

local root = "/app/software/gcloud/439.0.0"

conflict("gcloud")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGCLOUD", root)
setenv("EBVERSIONGCLOUD", "439.0.0")
setenv("EBDEVELGCLOUD", pathJoin(root, "logs/gcloud-439.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
