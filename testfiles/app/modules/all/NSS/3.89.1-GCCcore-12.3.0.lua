help([==[

Description
===========
Network Security Services (NSS) is a set of libraries designed to support cross-platform development
 of security-enabled client and server applications.


More information
================
 - Homepage: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS
]==])

whatis([==[Description: Network Security Services (NSS) is a set of libraries designed to support cross-platform development
 of security-enabled client and server applications.]==])
whatis([==[Homepage: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS]==])
whatis([==[URL: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS]==])

local root = "/app/software/NSS/3.89.1-GCCcore-12.3.0"

conflict("NSS")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("NSPR/4.35-GCCcore-12.3.0") ) then
    load("NSPR/4.35-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTNSS", root)
setenv("EBVERSIONNSS", "3.89.1")
setenv("EBDEVELNSS", pathJoin(root, "logs/NSS-3.89.1-GCCcore-12.3.0-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/nss"))
-- Built with EasyBuild version 4.9.0
