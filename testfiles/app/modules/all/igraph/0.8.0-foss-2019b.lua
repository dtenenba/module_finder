help([==[

Description
===========
igraph is a collection of network analysis tools with the emphasis on 
efficiency, portability and ease of use. igraph is open source and free. igraph can be 
programmed in R, Python and C/C++.


More information
================
 - Homepage: https://igraph.org
]==])

whatis([==[Description: igraph is a collection of network analysis tools with the emphasis on 
efficiency, portability and ease of use. igraph is open source and free. igraph can be 
programmed in R, Python and C/C++.]==])
whatis([==[Homepage: https://igraph.org]==])
whatis([==[URL: https://igraph.org]==])

local root = "/app/software/igraph/0.8.0-foss-2019b"

conflict("igraph")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("GLPK/4.65-GCCcore-8.3.0") ) then
    load("GLPK/4.65-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTIGRAPH", root)
setenv("EBVERSIONIGRAPH", "0.8.0")
setenv("EBDEVELIGRAPH", pathJoin(root, "logs/igraph-0.8.0-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
