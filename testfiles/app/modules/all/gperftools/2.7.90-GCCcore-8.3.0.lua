help([==[

Description
===========
gperftools are for use by developers so that they can create more robust applications.
 Especially of use to those developing multi-threaded applications in C++ with templates.
 Includes TCMalloc, heap-checker, heap-profiler and cpu-profiler.


More information
================
 - Homepage: https://github.com/gperftools/gperftools
]==])

whatis([==[Description: gperftools are for use by developers so that they can create more robust applications.
 Especially of use to those developing multi-threaded applications in C++ with templates.
 Includes TCMalloc, heap-checker, heap-profiler and cpu-profiler.]==])
whatis([==[Homepage: https://github.com/gperftools/gperftools]==])
whatis([==[URL: https://github.com/gperftools/gperftools]==])

local root = "/app/software/gperftools/2.7.90-GCCcore-8.3.0"

conflict("gperftools")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("libunwind/1.3.1-GCCcore-8.3.0") ) then
    load("libunwind/1.3.1-GCCcore-8.3.0")
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
setenv("EBVERSIONGPERFTOOLS", "2.7.90")
setenv("EBDEVELGPERFTOOLS", pathJoin(root, "logs/gperftools-2.7.90-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
