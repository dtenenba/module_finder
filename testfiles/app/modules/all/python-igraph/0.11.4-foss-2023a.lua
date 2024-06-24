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
cairocffi-1.6.1, cffi-1.16.0, igraph-0.11.4, pycparser-2.21, texttable-1.7.0
]==])

whatis([==[Description: Python interface to the igraph high performance graph library, primarily aimed at complex network
 research and analysis.]==])
whatis([==[Homepage: https://igraph.org/python]==])
whatis([==[URL: https://igraph.org/python]==])
whatis([==[Extensions: cairocffi-1.6.1, cffi-1.16.0, igraph-0.11.4, pycparser-2.21, texttable-1.7.0]==])

local root = "/app/software/python-igraph/0.11.4-foss-2023a"

conflict("python-igraph")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("igraph/0.10.10-foss-2023a") ) then
    load("igraph/0.10.10-foss-2023a")
end

if not ( isloaded("Clang/16.0.6-GCCcore-12.3.0") ) then
    load("Clang/16.0.6-GCCcore-12.3.0")
end

if not ( isloaded("libxml2/2.11.4-GCCcore-12.3.0") ) then
    load("libxml2/2.11.4-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTHONMINIGRAPH", root)
setenv("EBVERSIONPYTHONMINIGRAPH", "0.11.4")
setenv("EBDEVELPYTHONMINIGRAPH", pathJoin(root, "logs/python-igraph-0.11.4-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTPYTHONMINIGRAPH", "texttable-1.7.0,pycparser-2.21,cffi-1.16.0,cairocffi-1.6.1,igraph-0.11.4")
