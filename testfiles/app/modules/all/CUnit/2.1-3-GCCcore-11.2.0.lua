help([==[

Description
===========
Automated testing framework for C.


More information
================
 - Homepage: https://sourceforge.net/projects/cunit/
]==])

whatis([==[Description: Automated testing framework for C.]==])
whatis([==[Homepage: https://sourceforge.net/projects/cunit/]==])
whatis([==[URL: https://sourceforge.net/projects/cunit/]==])

local root = "/app/software/CUnit/2.1-3-GCCcore-11.2.0"

conflict("CUnit")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCUNIT", root)
setenv("EBVERSIONCUNIT", "2.1-3")
setenv("EBDEVELCUNIT", pathJoin(root, "logs/CUnit-2.1-3-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
