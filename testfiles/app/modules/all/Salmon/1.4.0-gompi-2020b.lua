help([==[

Description
===========
Salmon is a wicked-fast program to produce a highly-accurate,
 transcript-level quantification estimates from RNA-seq data.


More information
================
 - Homepage: https://github.com/COMBINE-lab/salmon
]==])

whatis([==[Description: Salmon is a wicked-fast program to produce a highly-accurate,
 transcript-level quantification estimates from RNA-seq data.]==])
whatis([==[Homepage: https://github.com/COMBINE-lab/salmon]==])
whatis([==[URL: https://github.com/COMBINE-lab/salmon]==])

local root = "/app/software/Salmon/1.4.0-gompi-2020b"

conflict("Salmon")

if not ( isloaded("gompi/2020b") ) then
    load("gompi/2020b")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("tbb/2020.3-GCCcore-10.2.0") ) then
    load("tbb/2020.3-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSALMON", root)
setenv("EBVERSIONSALMON", "1.4.0")
setenv("EBDEVELSALMON", pathJoin(root, "logs/Salmon-1.4.0-gompi-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.3
