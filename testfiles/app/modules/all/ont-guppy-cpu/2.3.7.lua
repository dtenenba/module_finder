help([==[

Description
===========
Guppy is a production basecaller provided by Oxford Nanopore,
 and uses a command-line interface.


More information
================
 - Homepage: https://nanoporetech.com/products/minit
]==])

whatis([==[Description: Guppy is a production basecaller provided by Oxford Nanopore,
 and uses a command-line interface.]==])
whatis([==[Homepage: https://nanoporetech.com/products/minit]==])
whatis([==[URL: https://nanoporetech.com/products/minit]==])

local root = "/app/software/ont-guppy-cpu/2.3.7"

conflict("ont-guppy-cpu")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTONTMINGUPPYMINCPU", root)
setenv("EBVERSIONONTMINGUPPYMINCPU", "2.3.7")
setenv("EBDEVELONTMINGUPPYMINCPU", pathJoin(root, "logs/ont-guppy-cpu-2.3.7-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
