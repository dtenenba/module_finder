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

local root = "/app/software/libleidenalg/0.11.1-foss-2022b"

conflict("libleidenalg")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("igraph/0.10.6-foss-2022b") ) then
    load("igraph/0.10.6-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBLEIDENALG", root)
setenv("EBVERSIONLIBLEIDENALG", "0.11.1")
setenv("EBDEVELLIBLEIDENALG", pathJoin(root, "logs/libleidenalg-0.11.1-foss-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
