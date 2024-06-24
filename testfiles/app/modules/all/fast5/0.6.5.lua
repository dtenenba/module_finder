help([==[

Description
===========
A lightweight C++ library for accessing Oxford Nanopore
 Technologies sequencing data.


More information
================
 - Homepage: http://simpsonlab.github.io/2017/02/27/packing_fast5/
]==])

whatis([==[Description: A lightweight C++ library for accessing Oxford Nanopore
 Technologies sequencing data.]==])
whatis([==[Homepage: http://simpsonlab.github.io/2017/02/27/packing_fast5/]==])

local root = "/app/software/fast5/0.6.5"

conflict("fast5")

prepend_path("CPATH", pathJoin(root, "include"))
setenv("EBROOTFAST5", root)
setenv("EBVERSIONFAST5", "0.6.5")
setenv("EBDEVELFAST5", pathJoin(root, "/app/logs/fast5-0.6.5-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include"))
-- Built with EasyBuild version 3.8.0
