help([==[

Description
===========
GEOS (Geometry Engine - Open Source) is a C++ port of the Java Topology Suite (JTS)


More information
================
 - Homepage: https://trac.osgeo.org/geos
]==])

whatis([==[Description: GEOS (Geometry Engine - Open Source) is a C++ port of the Java Topology Suite (JTS)]==])
whatis([==[Homepage: https://trac.osgeo.org/geos]==])
whatis([==[URL: https://trac.osgeo.org/geos]==])

local root = "/app/software/GEOS/3.12.1-GCC-13.2.0"

conflict("GEOS")

if not ( isloaded("GCC/13.2.0") ) then
    load("GCC/13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGEOS", root)
setenv("EBVERSIONGEOS", "3.12.1")
setenv("EBDEVELGEOS", pathJoin(root, "logs/GEOS-3.12.1-GCC-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
