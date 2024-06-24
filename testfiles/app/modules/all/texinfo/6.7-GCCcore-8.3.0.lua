help([==[

Description
===========
Texinfo is the official documentation format of the GNU project.


More information
================
 - Homepage: https://www.gnu.org/software/texinfo/
]==])

whatis([==[Description: Texinfo is the official documentation format of the GNU project.]==])
whatis([==[Homepage: https://www.gnu.org/software/texinfo/]==])
whatis([==[URL: https://www.gnu.org/software/texinfo/]==])

local root = "/app/software/texinfo/6.7-GCCcore-8.3.0"

conflict("texinfo")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("texlive/20200624") ) then
    load("texlive/20200624")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTEXINFO", root)
setenv("EBVERSIONTEXINFO", "6.7")
setenv("EBDEVELTEXINFO", pathJoin(root, "logs/texinfo-6.7-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
