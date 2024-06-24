help([==[

Description
===========
c-ares is a C library for asynchronous DNS requests (including name resolves)


More information
================
 - Homepage: https://c-ares.org/
]==])

whatis([==[Description: c-ares is a C library for asynchronous DNS requests (including name resolves)]==])
whatis([==[Homepage: https://c-ares.org/]==])
whatis([==[URL: https://c-ares.org/]==])

local root = "/app/software/c-ares/1.18.1-GCCcore-11.2.0"

conflict("c-ares")

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
setenv("EBROOTCMINARES", root)
setenv("EBVERSIONCMINARES", "1.18.1")
setenv("EBDEVELCMINARES", pathJoin(root, "logs/c-ares-1.18.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
