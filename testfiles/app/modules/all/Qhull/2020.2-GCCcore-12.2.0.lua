help([==[

Description
===========
Qhull computes the convex hull, Delaunay triangulation, Voronoi diagram,
 halfspace intersection about a point, furthest-site Delaunay triangulation,
 and furthest-site Voronoi diagram. The source code runs in 2-d, 3-d, 4-d, and
 higher dimensions. Qhull implements the Quickhull algorithm for computing the
 convex hull.


More information
================
 - Homepage: http://www.qhull.org
]==])

whatis([==[Description: 
 Qhull computes the convex hull, Delaunay triangulation, Voronoi diagram,
 halfspace intersection about a point, furthest-site Delaunay triangulation,
 and furthest-site Voronoi diagram. The source code runs in 2-d, 3-d, 4-d, and
 higher dimensions. Qhull implements the Quickhull algorithm for computing the
 convex hull.
]==])
whatis([==[Homepage: http://www.qhull.org]==])
whatis([==[URL: http://www.qhull.org]==])

local root = "/app/software/Qhull/2020.2-GCCcore-12.2.0"

conflict("Qhull")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTQHULL", root)
setenv("EBVERSIONQHULL", "2020.2")
setenv("EBDEVELQHULL", pathJoin(root, "logs/Qhull-2020.2-GCCcore-12.2.0-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "qhull/include"))
-- Built with EasyBuild version 4.7.1
