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

local root = "/app/software/Salmon/1.10.1-GCC-12.2.0"

conflict("Salmon")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("Boost/1.81.0-GCC-12.2.0") ) then
    load("Boost/1.81.0-GCC-12.2.0")
end

if not ( isloaded("tbb/2021.10.0-GCCcore-12.2.0") ) then
    load("tbb/2021.10.0-GCCcore-12.2.0")
end

if not ( isloaded("cURL/7.86.0-GCCcore-12.2.0") ) then
    load("cURL/7.86.0-GCCcore-12.2.0")
end

if not ( isloaded("libiconv/1.17-GCCcore-12.2.0") ) then
    load("libiconv/1.17-GCCcore-12.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.2.0") ) then
    load("bzip2/1.0.8-GCCcore-12.2.0")
end

if not ( isloaded("XZ/5.2.7-GCCcore-12.2.0") ) then
    load("XZ/5.2.7-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSALMON", root)
setenv("EBVERSIONSALMON", "1.10.1")
setenv("EBDEVELSALMON", pathJoin(root, "logs/Salmon-1.10.1-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
