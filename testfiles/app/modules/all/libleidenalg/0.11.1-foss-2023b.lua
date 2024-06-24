help([==[

Description
===========
Implements the Leiden algorithm in C++


More information
================
 - Homepage: https://github.com/vtraag/libleidenalg
]==])

whatis([==[Description: Implements the Leiden algorithm in C++]==])
whatis([==[Homepage: https://github.com/vtraag/libleidenalg]==])
whatis([==[URL: https://github.com/vtraag/libleidenalg]==])

local root = "/app/software/libleidenalg/0.11.1-foss-2023b"

conflict("libleidenalg")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("igraph/0.10.10-foss-2023b") ) then
    load("igraph/0.10.10-foss-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBLEIDENALG", root)
setenv("EBVERSIONLIBLEIDENALG", "0.11.1")
setenv("EBDEVELLIBLEIDENALG", pathJoin(root, "logs/libleidenalg-0.11.1-foss-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
