help([==[

Description
===========
A CPU+GPU Profiling library that provides access to timeline traces and hardware performance counters


More information
================
 - Homepage: https://github.com/pytorch/kineto
]==])

whatis([==[Description: A CPU+GPU Profiling library that provides access to timeline traces and hardware performance counters]==])
whatis([==[Homepage: https://github.com/pytorch/kineto]==])
whatis([==[URL: https://github.com/pytorch/kineto]==])

local root = "/app/software/kineto/0.4.0-GCC-11.3.0"

conflict("kineto")

if not ( isloaded("GCC/11.3.0") ) then
    load("GCC/11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTKINETO", root)
setenv("EBVERSIONKINETO", "0.4.0")
setenv("EBDEVELKINETO", pathJoin(root, "logs/kineto-0.4.0-GCC-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
