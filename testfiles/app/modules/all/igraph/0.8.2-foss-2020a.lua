help([==[

Description
===========
igraph is a collection of network analysis tools with the emphasis on 
efficiency, portability and ease of use. igraph is open source and free. igraph can be 
programmed in R, Python and C/C++.


More information
================
 - Homepage: http://igraph.org
]==])

whatis([==[Description: igraph is a collection of network analysis tools with the emphasis on 
efficiency, portability and ease of use. igraph is open source and free. igraph can be 
programmed in R, Python and C/C++.]==])
whatis([==[Homepage: http://igraph.org]==])
whatis([==[URL: http://igraph.org]==])

local root = "/app/software/igraph/0.8.2-foss-2020a"

conflict("igraph")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("zlib/1.2.11-GCCcore-9.3.0") ) then
    load("zlib/1.2.11-GCCcore-9.3.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-9.3.0") ) then
    load("libxml2/2.9.10-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTIGRAPH", root)
setenv("EBVERSIONIGRAPH", "0.8.2")
setenv("EBDEVELIGRAPH", pathJoin(root, "logs/igraph-0.8.2-foss-2020a-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
