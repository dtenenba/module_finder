help([==[

Description
===========
GNU libtool is a generic library support script. Libtool hides the complexity
 of using shared libraries behind a consistent, portable interface.


More information
================
 - Homepage: https://www.gnu.org/software/libtool
]==])

whatis([==[Description: 
 GNU libtool is a generic library support script. Libtool hides the complexity
 of using shared libraries behind a consistent, portable interface.
]==])
whatis([==[Homepage: https://www.gnu.org/software/libtool]==])
whatis([==[URL: https://www.gnu.org/software/libtool]==])

local root = "/app/software/libtool/2.4.7-GCCcore-13.2.0"

conflict("libtool")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("M4/1.4.19-GCCcore-13.2.0") ) then
    load("M4/1.4.19-GCCcore-13.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBTOOL", root)
setenv("EBVERSIONLIBTOOL", "2.4.7")
setenv("EBDEVELLIBTOOL", pathJoin(root, "logs/libtool-2.4.7-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
