help([==[

Description
===========
CppUnit is the C++ port of the famous JUnit framework for unit testing.


More information
================
 - Homepage: https://freedesktop.org/wiki/Software/cppunit/
]==])

whatis([==[Description: 
 CppUnit is the C++ port of the famous JUnit framework for unit testing.
]==])
whatis([==[Homepage: https://freedesktop.org/wiki/Software/cppunit/]==])
whatis([==[URL: https://freedesktop.org/wiki/Software/cppunit/]==])

local root = "/app/software/CppUnit/1.15.1-GCCcore-10.2.0"

conflict("CppUnit")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCPPUNIT", root)
setenv("EBVERSIONCPPUNIT", "1.15.1")
setenv("EBDEVELCPPUNIT", pathJoin(root, "logs/CppUnit-1.15.1-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
