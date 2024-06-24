help([==[

Description
===========
MAD is a high-quality MPEG audio decoder.


More information
================
 - Homepage: https://www.underbit.com/products/mad/
]==])

whatis([==[Description: MAD is a high-quality MPEG audio decoder.]==])
whatis([==[Homepage: https://www.underbit.com/products/mad/]==])
whatis([==[URL: https://www.underbit.com/products/mad/]==])

local root = "/app/software/libmad/0.15.1b-GCCcore-11.3.0"

conflict("libmad")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBMAD", root)
setenv("EBVERSIONLIBMAD", "0.15.1b")
setenv("EBDEVELLIBMAD", pathJoin(root, "logs/libmad-0.15.1b-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.2
