help([==[

Description
===========
gperftools is a collection of a high-performance multi-threaded malloc()
implementation, plus some pretty nifty performance analysis tools.
Includes TCMalloc, heap-checker, heap-profiler and cpu-profiler.


More information
================
 - Homepage: https://github.com/gperftools/gperftools
]==])

whatis([==[Description: 
gperftools is a collection of a high-performance multi-threaded malloc()
implementation, plus some pretty nifty performance analysis tools.
Includes TCMalloc, heap-checker, heap-profiler and cpu-profiler.
]==])
whatis([==[Homepage: https://github.com/gperftools/gperftools]==])
whatis([==[URL: https://github.com/gperftools/gperftools]==])

local root = "/app/software/gperftools/2.9.1-GCCcore-11.2.0"

conflict("gperftools")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("libunwind/1.5.0-GCCcore-11.2.0") ) then
    load("libunwind/1.5.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGPERFTOOLS", root)
setenv("EBVERSIONGPERFTOOLS", "2.9.1")
setenv("EBDEVELGPERFTOOLS", pathJoin(root, "logs/gperftools-2.9.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
