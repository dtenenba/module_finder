help([==[

Description
===========
span lite is a single-file header-only library to provide a bounds-safe view for sequences
 of objects. The library provides a C++20-like span for use with C++98 and later.


More information
================
 - Homepage: http:///
]==])

whatis([==[Description: span lite is a single-file header-only library to provide a bounds-safe view for sequences
 of objects. The library provides a C++20-like span for use with C++98 and later. ]==])
whatis([==[Homepage: http:///]==])
whatis([==[URL: http:///]==])

local root = "/app/software/span-lite/0.10.3-GCC-11.2.0"

conflict("span-lite")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSPANMINLITE", root)
setenv("EBVERSIONSPANMINLITE", "0.10.3")
setenv("EBDEVELSPANMINLITE", pathJoin(root, "logs/span-lite-0.10.3-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
