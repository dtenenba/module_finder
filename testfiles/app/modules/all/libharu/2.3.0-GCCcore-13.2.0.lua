help([==[

Description
===========
libHaru is a free, cross platform, open source library for generating PDF files.


More information
================
 - Homepage: https://github.com/libharu/libharu/
]==])

whatis([==[Description: libHaru is a free, cross platform, open source library for generating PDF files.]==])
whatis([==[Homepage: https://github.com/libharu/libharu/]==])
whatis([==[URL: https://github.com/libharu/libharu/]==])

local root = "/app/software/libharu/2.3.0-GCCcore-13.2.0"

conflict("libharu")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("libpng/1.6.40-GCCcore-13.2.0") ) then
    load("libpng/1.6.40-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBHARU", root)
setenv("EBVERSIONLIBHARU", "2.3.0")
setenv("EBDEVELLIBHARU", pathJoin(root, "logs/libharu-2.3.0-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
