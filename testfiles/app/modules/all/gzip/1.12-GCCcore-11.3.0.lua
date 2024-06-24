help([==[

Description
===========
gzip (GNU zip) is a popular data compression program as a replacement for compress


More information
================
 - Homepage: https://www.gnu.org/software/gzip/
]==])

whatis([==[Description: gzip (GNU zip) is a popular data compression program as a replacement for compress]==])
whatis([==[Homepage: https://www.gnu.org/software/gzip/]==])
whatis([==[URL: https://www.gnu.org/software/gzip/]==])

local root = "/app/software/gzip/1.12-GCCcore-11.3.0"

conflict("gzip")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGZIP", root)
setenv("EBVERSIONGZIP", "1.12")
setenv("EBDEVELGZIP", pathJoin(root, "logs/gzip-1.12-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
