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
ddt-1.7.1, leidenalg-0.10.2
]==])

whatis([==[Description: Implementation of the Leiden algorithm for various quality
functions to be used with igraph in Python.]==])
whatis([==[Homepage: https://github.com/vtraag/leidenalg]==])
whatis([==[URL: https://github.com/vtraag/leidenalg]==])
whatis([==[Extensions: ddt-1.7.1, leidenalg-0.10.2]==])

local root = "/app/software/leidenalg/0.10.2-foss-2023a"

conflict("leidenalg")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("igraph/0.10.10-foss-2023a") ) then
    load("igraph/0.10.10-foss-2023a")
end

if not ( isloaded("python-igraph/0.11.4-foss-2023a") ) then
    load("python-igraph/0.11.4-foss-2023a")
end

if not ( isloaded("libleidenalg/0.11.1-foss-2023a") ) then
    load("libleidenalg/0.11.1-foss-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLEIDENALG", root)
setenv("EBVERSIONLEIDENALG", "0.10.2")
setenv("EBDEVELLEIDENALG", pathJoin(root, "logs/leidenalg-0.10.2-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTLEIDENALG", "ddt-1.7.1,leidenalg-0.10.2")
