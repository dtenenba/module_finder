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
ddt-1.4.2, leidenalg-0.8.3
]==])

whatis([==[Description: Implementation of the Leiden algorithm for various quality
functions to be used with igraph in Python.]==])
whatis([==[Homepage: https://github.com/vtraag/leidenalg]==])
whatis([==[URL: https://github.com/vtraag/leidenalg]==])
whatis([==[Extensions: ddt-1.4.2, leidenalg-0.8.3]==])

local root = "/app/software/leidenalg/0.8.3-foss-2020b"

conflict("leidenalg")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("igraph/0.9.1-foss-2020b") ) then
    load("igraph/0.9.1-foss-2020b")
end

if not ( isloaded("python-igraph/0.9.0-foss-2020b") ) then
    load("python-igraph/0.9.0-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLEIDENALG", root)
setenv("EBVERSIONLEIDENALG", "0.8.3")
setenv("EBDEVELLEIDENALG", pathJoin(root, "logs/leidenalg-0.8.3-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.4.2
setenv("EBEXTSLISTLEIDENALG", "ddt-1.4.2,leidenalg-0.8.3")
