help([==[

Description
===========
The JasPer Project is an open-source initiative to provide a free
 software-based reference implementation of the codec specified in
 the JPEG-2000 Part-1 standard.


More information
================
 - Homepage: https://www.ece.uvic.ca/~frodo/jasper/
]==])

whatis([==[Description: 
 The JasPer Project is an open-source initiative to provide a free
 software-based reference implementation of the codec specified in
 the JPEG-2000 Part-1 standard.
]==])
whatis([==[Homepage: https://www.ece.uvic.ca/~frodo/jasper/]==])
whatis([==[URL: https://www.ece.uvic.ca/~frodo/jasper/]==])

local root = "/app/software/JasPer/2.0.14-GCCcore-10.2.0"

conflict("JasPer")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJASPER", root)
setenv("EBVERSIONJASPER", "2.0.14")
setenv("EBDEVELJASPER", pathJoin(root, "logs/JasPer-2.0.14-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
