help([==[

Description
===========
A C library that implements a dynamic array.


More information
================
 - Homepage: http://judy.sourceforge.net/
]==])

whatis([==[Description: A C library that implements a dynamic array.]==])
whatis([==[Homepage: http://judy.sourceforge.net/]==])
whatis([==[URL: http://judy.sourceforge.net/]==])

local root = "/app/software/Judy/1.0.5-GCCcore-11.2.0"

conflict("Judy")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUDY", root)
setenv("EBVERSIONJUDY", "1.0.5")
setenv("EBDEVELJUDY", pathJoin(root, "logs/Judy-1.0.5-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
