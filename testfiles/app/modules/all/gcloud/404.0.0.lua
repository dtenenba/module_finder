help([==[

Description
===========
Google Cloud SDK
Libraries and tools for interacting with Google Cloud products and services.


More information
================
 - Homepage: https://cloud.google.com/sdk
]==])

whatis([==[Description: Google Cloud SDK
Libraries and tools for interacting with Google Cloud products and services.]==])
whatis([==[Homepage: https://cloud.google.com/sd ]==])
whatis([==[URL: https://cloud.google.com/sd ]==])

local root = "/app/software/gcloud/google-cloud-sdk"

conflict("CellRanger")

if not ( isloaded("bcl2fastq2/2.20.0-GCC-10.2.0") ) then
    load("bcl2fastq2/2.20.0-GCC-10.2.0")
end

prepend_path("PATH", pathJoin(root, "bin"))

-- handmade handbuilt - Oct 3, 2022 - jfdey
