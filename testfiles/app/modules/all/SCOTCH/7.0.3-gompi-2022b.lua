help([==[

Description
===========
Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.


More information
================
 - Homepage: https://www.labri.fr/perso/pelegrin/scotch/
]==])

whatis([==[Description: Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.]==])
whatis([==[Homepage: https://www.labri.fr/perso/pelegrin/scotch/]==])
whatis([==[URL: https://www.labri.fr/perso/pelegrin/scotch/]==])

local root = "/app/software/SCOTCH/7.0.3-gompi-2022b"

conflict("SCOTCH")

if not ( isloaded("gompi/2022b") ) then
    load("gompi/2022b")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCOTCH", root)
setenv("EBVERSIONSCOTCH", "7.0.3")
setenv("EBDEVELSCOTCH", pathJoin(root, "logs/SCOTCH-7.0.3-gompi-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
