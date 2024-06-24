help([==[

Description
===========
The pbcopper library provides a suite of data structures, algorithms,
 and utilities for C++ applications.


More information
================
 - Homepage: https://github.com/PacificBiosciences/pbcopper
]==])

whatis([==[Description: The pbcopper library provides a suite of data structures, algorithms,
 and utilities for C++ applications.]==])
whatis([==[Homepage: https://github.com/PacificBiosciences/pbcopper]==])
whatis([==[URL: https://github.com/PacificBiosciences/pbcopper]==])

local root = "/app/software/pbcopper/1.3.0-foss-2019b"

conflict("pbcopper")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Boost/1.71.0-gompi-2019b") ) then
    load("Boost/1.71.0-gompi-2019b")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPBCOPPER", root)
setenv("EBVERSIONPBCOPPER", "1.3.0")
setenv("EBDEVELPBCOPPER", pathJoin(root, "logs/pbcopper-1.3.0-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
