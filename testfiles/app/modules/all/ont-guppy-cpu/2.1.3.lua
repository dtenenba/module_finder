help([==[

Description
===========
Guppy software supports MinIT and MinION instruments from
 Nanopore Technologies


More information
================
 - Homepage: https://nanoporetech.com/products/minit
]==])

whatis([==[Description: Guppy software supports MinIT and MinION instruments from
 Nanopore Technologies]==])
whatis([==[Homepage: https://nanoporetech.com/products/minit]==])

local root = "/app/software/ont-guppy-cpu/2.1.3"

conflict("ont-guppy-cpu")

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTONTMINGUPPYMINCPU", root)
setenv("EBVERSIONONTMINGUPPYMINCPU", "2.1.3")
setenv("EBDEVELONTMINGUPPYMINCPU", pathJoin(root, "/app/logs/ont-guppy-cpu-2.1.3-easybuild-devel"))

-- Built with EasyBuild version 3.8.0
