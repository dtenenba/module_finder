help([==[

Description
===========
Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.


More information
================
 - Homepage: https://gforge.inria.fr/projects/scotch/
]==])

whatis([==[Description: Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.]==])
whatis([==[Homepage: https://gforge.inria.fr/projects/scotch/]==])
whatis([==[URL: https://gforge.inria.fr/projects/scotch/]==])

local root = "/app/software/SCOTCH/7.0.1-gompi-2021b"

conflict("SCOTCH")

if not ( isloaded("gompi/2021b") ) then
    load("gompi/2021b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCOTCH", root)
setenv("EBVERSIONSCOTCH", "7.0.1")
setenv("EBDEVELSCOTCH", pathJoin(root, "logs/SCOTCH-7.0.1-gompi-2021b-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
