help([==[

Description
===========
bustools is a program for manipulating BUS files for single cell RNA-Seq datasets.
 It can be used to error correct barcodes, collapse  UMIs, produce gene count or transcript compatibility
 count matrices, and is useful for many other tasks. See the kallisto | bustools  website for examples
 and instructions on how to use bustools as part of a single-cell RNA-seq workflow.


More information
================
 - Homepage: https://github.com/BUStools/bustools
]==])

whatis([==[Description: bustools is a program for manipulating BUS files for single cell RNA-Seq datasets.
 It can be used to error correct barcodes, collapse  UMIs, produce gene count or transcript compatibility
 count matrices, and is useful for many other tasks. See the kallisto | bustools  website for examples
 and instructions on how to use bustools as part of a single-cell RNA-seq workflow.]==])
whatis([==[Homepage: https://github.com/BUStools/bustools]==])
whatis([==[URL: https://github.com/BUStools/bustools]==])

local root = "/app/software/BUStools/0.40.0-foss-2019b"

conflict("BUStools")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBUSTOOLS", root)
setenv("EBVERSIONBUSTOOLS", "0.40.0")
setenv("EBDEVELBUSTOOLS", pathJoin(root, "logs/BUStools-0.40.0-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
