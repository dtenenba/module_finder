help([==[

Description
===========
Jansson is a C library for encoding, decoding and manipulating JSON data.
 Its main features and design principles are:
 * Simple and intuitive API and data model
 * Comprehensive documentation
 * No dependencies on other libraries
 * Full Unicode support (UTF-8)
 * Extensive test suite


More information
================
 - Homepage: https://www.digip.org/jansson/
]==])

whatis([==[Description: Jansson is a C library for encoding, decoding and manipulating JSON data.
 Its main features and design principles are:
 * Simple and intuitive API and data model
 * Comprehensive documentation
 * No dependencies on other libraries
 * Full Unicode support (UTF-8)
 * Extensive test suite]==])
whatis([==[Homepage: https://www.digip.org/jansson/]==])
whatis([==[URL: https://www.digip.org/jansson/]==])

local root = "/app/software/Jansson/2.13.1-GCC-11.2.0"

conflict("Jansson")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTJANSSON", root)
setenv("EBVERSIONJANSSON", "2.13.1")
setenv("EBDEVELJANSSON", pathJoin(root, "logs/Jansson-2.13.1-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
