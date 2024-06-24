help([==[

Description
===========
Xerces-C++ is a validating XML parser written in a portable
subset of C++. Xerces-C++ makes it easy to give your application the ability to
read and write XML data. A shared library is provided for parsing, generating,
manipulating, and validating XML documents using the DOM, SAX, and SAX2
APIs.


More information
================
 - Homepage: https://xerces.apache.org/xerces-c/
]==])

whatis([==[Description: Xerces-C++ is a validating XML parser written in a portable
subset of C++. Xerces-C++ makes it easy to give your application the ability to
read and write XML data. A shared library is provided for parsing, generating,
manipulating, and validating XML documents using the DOM, SAX, and SAX2
APIs.]==])
whatis([==[Homepage: https://xerces.apache.org/xerces-c/]==])
whatis([==[URL: https://xerces.apache.org/xerces-c/]==])

local root = "/app/software/Xerces-C++/3.2.5-GCCcore-13.2.0"

conflict("Xerces-C++")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("cURL/8.3.0-GCCcore-13.2.0") ) then
    load("cURL/8.3.0-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXERCESMINCPLUSPLUS", root)
setenv("EBVERSIONXERCESMINCPLUSPLUS", "3.2.5")
setenv("EBDEVELXERCESMINCPLUSPLUS", pathJoin(root, "logs/Xerces-C++-3.2.5-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
