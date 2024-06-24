help([==[

Description
===========
fmt (formerly cppformat) is an open-source formatting library.


More information
================
 - Homepage: http://fmtlib.net/
]==])

whatis([==[Description: fmt (formerly cppformat) is an open-source formatting library.]==])
whatis([==[Homepage: http://fmtlib.net/]==])
whatis([==[URL: http://fmtlib.net/]==])

local root = "/app/software/fmt/9.1.0-GCCcore-12.2.0"

conflict("fmt")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTFMT", root)
setenv("EBVERSIONFMT", "9.1.0")
setenv("EBDEVELFMT", pathJoin(root, "logs/fmt-9.1.0-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
