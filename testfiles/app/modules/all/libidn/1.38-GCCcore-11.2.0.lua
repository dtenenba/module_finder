help([==[

Description
===========
GNU Libidn is a fully documented implementation of the Stringprep, Punycode and IDNA specifications.
Libidn's purpose is to encode and decode internationalized domain names.


More information
================
 - Homepage: http://www.gnu.org/software/libidn
]==])

whatis([==[Description: GNU Libidn is a fully documented implementation of the Stringprep, Punycode and IDNA specifications.
Libidn's purpose is to encode and decode internationalized domain names.]==])
whatis([==[Homepage: http://www.gnu.org/software/libidn]==])
whatis([==[URL: http://www.gnu.org/software/libidn]==])

local root = "/app/software/libidn/1.38-GCCcore-11.2.0"

conflict("libidn")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBIDN", root)
setenv("EBVERSIONLIBIDN", "1.38")
setenv("EBDEVELLIBIDN", pathJoin(root, "logs/libidn-1.38-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
