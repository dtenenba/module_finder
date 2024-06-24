help([==[

Description
===========
Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.


More information
================
 - Homepage: http://gforge.inria.fr/projects/scotch/
]==])

whatis([==[Description: Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.]==])
whatis([==[Homepage: http://gforge.inria.fr/projects/scotch/]==])
whatis([==[URL: http://gforge.inria.fr/projects/scotch/]==])

local root = "/app/software/SCOTCH/6.1.0-foss-2020b"

conflict("SCOTCH")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCOTCH", root)
setenv("EBVERSIONSCOTCH", "6.1.0")
setenv("EBDEVELSCOTCH", pathJoin(root, "logs/SCOTCH-6.1.0-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
