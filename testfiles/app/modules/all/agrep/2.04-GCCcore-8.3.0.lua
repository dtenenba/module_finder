help([==[

Description
===========
AGREP - approximate GREP for fast fuzzy string searching.


More information
================
 - Homepage: https://github.com/Wikinaut/agrep
]==])

whatis([==[Description: AGREP - approximate GREP for fast fuzzy string searching.]==])
whatis([==[Homepage: https://github.com/Wikinaut/agrep]==])
whatis([==[URL: https://github.com/Wikinaut/agrep]==])

local root = "/app/software/agrep/2.04-GCCcore-8.3.0"

conflict("agrep")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAGREP", root)
setenv("EBVERSIONAGREP", "2.04")
setenv("EBDEVELAGREP", pathJoin(root, "logs/agrep-2.04-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
