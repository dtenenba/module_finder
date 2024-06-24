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

local root = "/app/software/igraph/0.10.10-foss-2023b"

conflict("igraph")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("GLPK/5.0-GCCcore-13.2.0") ) then
    load("GLPK/5.0-GCCcore-13.2.0")
end

if not ( isloaded("libxml2/2.11.5-GCCcore-13.2.0") ) then
    load("libxml2/2.11.5-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("arpack-ng/3.9.1-foss-2023b") ) then
    load("arpack-ng/3.9.1-foss-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTIGRAPH", root)
setenv("EBVERSIONIGRAPH", "0.10.10")
setenv("EBDEVELIGRAPH", pathJoin(root, "logs/igraph-0.10.10-foss-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
