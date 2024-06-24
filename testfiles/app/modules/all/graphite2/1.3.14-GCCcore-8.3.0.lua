help([==[

Description
===========
Graphite is a "smart font" system developed specifically to
 handle the complexities of lesser-known languages of the world.


More information
================
 - Homepage: http://graphite.sil.org/
]==])

whatis([==[Description: Graphite is a "smart font" system developed specifically to
 handle the complexities of lesser-known languages of the world.]==])
whatis([==[Homepage: http://graphite.sil.org/]==])
whatis([==[URL: http://graphite.sil.org/]==])

local root = "/app/software/graphite2/1.3.14-GCCcore-8.3.0"

conflict("graphite2")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGRAPHITE2", root)
setenv("EBVERSIONGRAPHITE2", "1.3.14")
setenv("EBDEVELGRAPHITE2", pathJoin(root, "logs/graphite2-1.3.14-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
