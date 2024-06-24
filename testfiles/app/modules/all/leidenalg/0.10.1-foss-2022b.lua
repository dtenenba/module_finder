help([==[

Description
===========
Implementation of the Leiden algorithm for various quality
functions to be used with igraph in Python.


More information
================
 - Homepage: https://github.com/vtraag/leidenalg


Included extensions
===================
ddt-1.6.0, leidenalg-0.10.1
]==])

whatis([==[Description: Implementation of the Leiden algorithm for various quality
functions to be used with igraph in Python.]==])
whatis([==[Homepage: https://github.com/vtraag/leidenalg]==])
whatis([==[URL: https://github.com/vtraag/leidenalg]==])
whatis([==[Extensions: ddt-1.6.0, leidenalg-0.10.1]==])

local root = "/app/software/leidenalg/0.10.1-foss-2022b"

conflict("leidenalg")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("igraph/0.10.6-foss-2022b") ) then
    load("igraph/0.10.6-foss-2022b")
end

if not ( isloaded("python-igraph/0.10.6-foss-2022b") ) then
    load("python-igraph/0.10.6-foss-2022b")
end

if not ( isloaded("libleidenalg/0.11.1-foss-2022b") ) then
    load("libleidenalg/0.11.1-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLEIDENALG", root)
setenv("EBVERSIONLEIDENALG", "0.10.1")
setenv("EBDEVELLEIDENALG", pathJoin(root, "logs/leidenalg-0.10.1-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTLEIDENALG", "ddt-1.6.0,leidenalg-0.10.1")
