help([==[

Description
===========
utf8proc is a small, clean C library that provides Unicode normalization, case-folding, 
and other operations for data in the UTF-8 encoding.


More information
================
 - Homepage: https://github.com/JuliaStrings/utf8proc
]==])

whatis([==[Description: utf8proc is a small, clean C library that provides Unicode normalization, case-folding, 
and other operations for data in the UTF-8 encoding.]==])
whatis([==[Homepage: https://github.com/JuliaStrings/utf8proc]==])
whatis([==[URL: https://github.com/JuliaStrings/utf8proc]==])

local root = "/app/software/utf8proc/2.8.0-GCCcore-12.3.0"

conflict("utf8proc")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTUTF8PROC", root)
setenv("EBVERSIONUTF8PROC", "2.8.0")
setenv("EBDEVELUTF8PROC", pathJoin(root, "logs/utf8proc-2.8.0-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
