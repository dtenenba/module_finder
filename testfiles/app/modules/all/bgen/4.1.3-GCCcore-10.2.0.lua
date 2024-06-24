help([==[

Description
===========
A BGEN file format reader. It fully supports the BGEN format specifications 1.2 and 1.3.


More information
================
 - Homepage: https://github.com/limix/bgen
]==])

whatis([==[Description: A BGEN file format reader. It fully supports the BGEN format specifications 1.2 and 1.3.]==])
whatis([==[Homepage: https://github.com/limix/bgen]==])
whatis([==[URL: https://github.com/limix/bgen]==])

local root = "/app/software/bgen/4.1.3-GCCcore-10.2.0"

conflict("bgen")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("zstd/1.4.5-GCCcore-10.2.0") ) then
    load("zstd/1.4.5-GCCcore-10.2.0")
end

if not ( isloaded("almosthere/2.0.2-GCCcore-10.2.0") ) then
    load("almosthere/2.0.2-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBGEN", root)
setenv("EBVERSIONBGEN", "4.1.3")
setenv("EBDEVELBGEN", pathJoin(root, "logs/bgen-4.1.3-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
