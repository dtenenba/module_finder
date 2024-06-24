help([==[

Description
===========
A C library for handling bigWig files


More information
================
 - Homepage: https://github.com/dpryan79/libBigWig
]==])

whatis([==[Description: A C library for handling bigWig files]==])
whatis([==[Homepage: https://github.com/dpryan79/libBigWig]==])
whatis([==[URL: https://github.com/dpryan79/libBigWig]==])

local root = "/app/software/libBigWig/0.4.4-GCCcore-8.3.0"

conflict("libBigWig")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBBIGWIG", root)
setenv("EBVERSIONLIBBIGWIG", "0.4.4")
setenv("EBDEVELLIBBIGWIG", pathJoin(root, "logs/libBigWig-0.4.4-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
