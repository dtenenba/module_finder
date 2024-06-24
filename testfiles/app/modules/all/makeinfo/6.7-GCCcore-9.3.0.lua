help([==[

Description
===========
makeinfo is part of the Texinfo project, the official documentation format of the GNU project.


More information
================
 - Homepage: https://www.gnu.org/software/texinfo/
]==])

whatis([==[Description: makeinfo is part of the Texinfo project, the official documentation format of the GNU project.]==])
whatis([==[Homepage: https://www.gnu.org/software/texinfo/]==])
whatis([==[URL: https://www.gnu.org/software/texinfo/]==])

local root = "/app/software/makeinfo/6.7-GCCcore-9.3.0"

conflict("makeinfo")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMAKEINFO", root)
setenv("EBVERSIONMAKEINFO", "6.7")
setenv("EBDEVELMAKEINFO", pathJoin(root, "logs/makeinfo-6.7-GCCcore-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
