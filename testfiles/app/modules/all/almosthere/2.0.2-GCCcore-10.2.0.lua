help([==[

Description
===========
Progress indicator C library.
ATHR is a simple yet powerful progress indicator library that works on Windows, 
Linux, and macOS. It is non-blocking as the progress update is done via a 
dedicated, lightweight thread, as to not impair the performance of the calling program.


More information
================
 - Homepage: https://github.com/horta/almosthere
]==])

whatis([==[Description: Progress indicator C library.
ATHR is a simple yet powerful progress indicator library that works on Windows, 
Linux, and macOS. It is non-blocking as the progress update is done via a 
dedicated, lightweight thread, as to not impair the performance of the calling program.]==])
whatis([==[Homepage: https://github.com/horta/almosthere]==])
whatis([==[URL: https://github.com/horta/almosthere]==])

local root = "/app/software/almosthere/2.0.2-GCCcore-10.2.0"

conflict("almosthere")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTALMOSTHERE", root)
setenv("EBVERSIONALMOSTHERE", "2.0.2")
setenv("EBDEVELALMOSTHERE", pathJoin(root, "logs/almosthere-2.0.2-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
