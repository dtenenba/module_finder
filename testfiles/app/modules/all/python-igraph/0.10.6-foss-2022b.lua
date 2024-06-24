help([==[

Description
===========
Python interface to the igraph high performance graph library, primarily aimed at complex network
 research and analysis.


More information
================
 - Homepage: https://igraph.org/python


Included extensions
===================
cairocffi-1.6.1, igraph-0.10.6, texttable-1.6.4
]==])

whatis([==[Description: Python interface to the igraph high performance graph library, primarily aimed at complex network
 research and analysis.]==])
whatis([==[Homepage: https://igraph.org/python]==])
whatis([==[URL: https://igraph.org/python]==])
whatis([==[Extensions: cairocffi-1.6.1, igraph-0.10.6, texttable-1.6.4]==])

local root = "/app/software/python-igraph/0.10.6-foss-2022b"

conflict("python-igraph")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("igraph/0.10.6-foss-2022b") ) then
    load("igraph/0.10.6-foss-2022b")
end

if not ( isloaded("Clang/16.0.4-GCCcore-12.2.0") ) then
    load("Clang/16.0.4-GCCcore-12.2.0")
end

if not ( isloaded("libxml2/2.10.3-GCCcore-12.2.0") ) then
    load("libxml2/2.10.3-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTHONMINIGRAPH", root)
setenv("EBVERSIONPYTHONMINIGRAPH", "0.10.6")
setenv("EBDEVELPYTHONMINIGRAPH", pathJoin(root, "logs/python-igraph-0.10.6-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPYTHONMINIGRAPH", "texttable-1.6.4,cairocffi-1.6.1,igraph-0.10.6")
