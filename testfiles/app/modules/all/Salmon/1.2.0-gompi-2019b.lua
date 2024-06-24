help([==[

Description
===========
Salmon is a wicked-fast program to produce a highly-accurate,
transcript-level quantification estimates from RNA-seq data. Salmon achieves
its accuracy and speed via a number of different innovations, including the use
of selective-alignment, and massively-parallel stochastic collapsed variational
inference.


More information
================
 - Homepage: https://salmon.readthedocs.io
]==])

whatis([==[Description: Salmon is a wicked-fast program to produce a highly-accurate,
transcript-level quantification estimates from RNA-seq data. Salmon achieves
its accuracy and speed via a number of different innovations, including the use
of selective-alignment, and massively-parallel stochastic collapsed variational
inference.]==])
whatis([==[Homepage: https://salmon.readthedocs.io]==])
whatis([==[URL: https://salmon.readthedocs.io]==])

local root = "/app/software/Salmon/1.2.0-gompi-2019b"

conflict("Salmon")

if not ( isloaded("gompi/2019b") ) then
    load("gompi/2019b")
end

if not ( isloaded("tbb/2019_U9-GCCcore-8.3.0") ) then
    load("tbb/2019_U9-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSALMON", root)
setenv("EBVERSIONSALMON", "1.2.0")
setenv("EBDEVELSALMON", pathJoin(root, "logs/Salmon-1.2.0-gompi-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
