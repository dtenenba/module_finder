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

local root = "/app/software/utf8proc/2.6.1-GCCcore-11.2.0"

conflict("utf8proc")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTUTF8PROC", root)
setenv("EBVERSIONUTF8PROC", "2.6.1")
setenv("EBDEVELUTF8PROC", pathJoin(root, "logs/utf8proc-2.6.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
