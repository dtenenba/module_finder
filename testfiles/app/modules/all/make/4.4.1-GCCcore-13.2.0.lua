help([==[

Description
===========
GNU version of make utility


More information
================
 - Homepage: https://www.gnu.org/software/make/make.html
]==])

whatis([==[Description: GNU version of make utility]==])
whatis([==[Homepage: https://www.gnu.org/software/make/make.html]==])
whatis([==[URL: https://www.gnu.org/software/make/make.html]==])

local root = "/app/software/make/4.4.1-GCCcore-13.2.0"

conflict("make")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMAKE", root)
setenv("EBVERSIONMAKE", "4.4.1")
setenv("EBDEVELMAKE", pathJoin(root, "logs/make-4.4.1-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
