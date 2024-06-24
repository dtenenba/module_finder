help([==[

Description
===========
Asynchronous input/output library that uses the kernels native interface.


More information
================
 - Homepage: https://pagure.io/libaio
]==])

whatis([==[Description: Asynchronous input/output library that uses the kernels native interface.]==])
whatis([==[Homepage: https://pagure.io/libaio]==])
whatis([==[URL: https://pagure.io/libaio]==])

local root = "/app/software/libaio/0.3.112-GCCcore-11.2.0"

conflict("libaio")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBAIO", root)
setenv("EBVERSIONLIBAIO", "0.3.112")
setenv("EBDEVELLIBAIO", pathJoin(root, "logs/libaio-0.3.112-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
