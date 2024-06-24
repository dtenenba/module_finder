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
python-igraph-0.9.6, texttable-1.6.4
]==])

whatis([==[Description: Python interface to the igraph high performance graph library, primarily aimed at complex network
 research and analysis.]==])
whatis([==[Homepage: https://igraph.org/python]==])
whatis([==[URL: https://igraph.org/python]==])
whatis([==[Extensions: python-igraph-0.9.6, texttable-1.6.4]==])

local root = "/app/software/python-igraph/0.9.6-foss-2021a"

conflict("python-igraph")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("igraph/0.9.4-foss-2021a") ) then
    load("igraph/0.9.4-foss-2021a")
end

if not ( isloaded("PyCairo/1.20.1-GCCcore-10.3.0") ) then
    load("PyCairo/1.20.1-GCCcore-10.3.0")
end

if not ( isloaded("Clang/12.0.1-GCCcore-10.3.0") ) then
    load("Clang/12.0.1-GCCcore-10.3.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.3.0") ) then
    load("libxml2/2.9.10-GCCcore-10.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.3.0") ) then
    load("zlib/1.2.11-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYTHONMINIGRAPH", root)
setenv("EBVERSIONPYTHONMINIGRAPH", "0.9.6")
setenv("EBDEVELPYTHONMINIGRAPH", pathJoin(root, "logs/python-igraph-0.9.6-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTPYTHONMINIGRAPH", "texttable-1.6.4,python-igraph-0.9.6")
