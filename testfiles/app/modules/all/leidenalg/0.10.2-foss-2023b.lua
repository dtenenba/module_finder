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
ddt-1.7.2, leidenalg-0.10.2
]==])

whatis([==[Description: Implementation of the Leiden algorithm for various quality
functions to be used with igraph in Python.]==])
whatis([==[Homepage: https://github.com/vtraag/leidenalg]==])
whatis([==[URL: https://github.com/vtraag/leidenalg]==])
whatis([==[Extensions: ddt-1.7.2, leidenalg-0.10.2]==])

local root = "/app/software/leidenalg/0.10.2-foss-2023b"

conflict("leidenalg")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("igraph/0.10.10-foss-2023b") ) then
    load("igraph/0.10.10-foss-2023b")
end

if not ( isloaded("python-igraph/0.11.4-foss-2023b") ) then
    load("python-igraph/0.11.4-foss-2023b")
end

if not ( isloaded("libleidenalg/0.11.1-foss-2023b") ) then
    load("libleidenalg/0.11.1-foss-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLEIDENALG", root)
setenv("EBVERSIONLEIDENALG", "0.10.2")
setenv("EBDEVELLEIDENALG", pathJoin(root, "logs/leidenalg-0.10.2-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTLEIDENALG", "ddt-1.7.2,leidenalg-0.10.2")
