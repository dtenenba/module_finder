help([==[

Description
===========
nsync is a C library that exports various synchronization primitives, such as mutexes


More information
================
 - Homepage: https://github.com/google/nsync
]==])

whatis([==[Description: nsync is a C library that exports various synchronization primitives, such as mutexes]==])
whatis([==[Homepage: https://github.com/google/nsync]==])
whatis([==[URL: https://github.com/google/nsync]==])

local root = "/app/software/nsync/1.24.0-GCCcore-8.3.0"

conflict("nsync")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTNSYNC", root)
setenv("EBVERSIONNSYNC", "1.24.0")
setenv("EBDEVELNSYNC", pathJoin(root, "logs/nsync-1.24.0-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
