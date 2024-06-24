help([==[

Description
===========
jq is a lightweight and flexible command-line JSON processor.


More information
================
 - Homepage: https://stedolan.github.io/jq/
]==])

whatis([==[Description: jq is a lightweight and flexible command-line JSON processor.]==])
whatis([==[Homepage: https://stedolan.github.io/jq/]==])
whatis([==[URL: https://stedolan.github.io/jq/]==])

local root = "/app/software/jq/1.6-GCCcore-12.2.0"

conflict("jq")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJQ", root)
setenv("EBVERSIONJQ", "1.6")
setenv("EBDEVELJQ", pathJoin(root, "logs/jq-1.6-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
