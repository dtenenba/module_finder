help([==[

Description
===========
Valgrind: Debugging and profiling tools


More information
================
 - Homepage: https://valgrind.org
]==])

whatis([==[Description: Valgrind: Debugging and profiling tools]==])
whatis([==[Homepage: https://valgrind.org]==])
whatis([==[URL: https://valgrind.org]==])

local root = "/app/software/Valgrind/3.16.1-gompi-2020b"

conflict("Valgrind")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTVALGRIND", root)
setenv("EBVERSIONVALGRIND", "3.16.1")
setenv("EBDEVELVALGRIND", pathJoin(root, "logs/Valgrind-3.16.1-gompi-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
