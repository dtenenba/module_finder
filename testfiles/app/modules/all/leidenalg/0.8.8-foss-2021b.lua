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
ddt-1.4.4, leidenalg-0.8.8
]==])

whatis([==[Description: Implementation of the Leiden algorithm for various quality
functions to be used with igraph in Python.]==])
whatis([==[Homepage: https://github.com/vtraag/leidenalg]==])
whatis([==[URL: https://github.com/vtraag/leidenalg]==])
whatis([==[Extensions: ddt-1.4.4, leidenalg-0.8.8]==])

local root = "/app/software/leidenalg/0.8.8-foss-2021b"

conflict("leidenalg")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("igraph/0.9.5-foss-2021b") ) then
    load("igraph/0.9.5-foss-2021b")
end

if not ( isloaded("python-igraph/0.9.8-foss-2021b") ) then
    load("python-igraph/0.9.8-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLEIDENALG", root)
setenv("EBVERSIONLEIDENALG", "0.8.8")
setenv("EBDEVELLEIDENALG", pathJoin(root, "logs/leidenalg-0.8.8-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTLEIDENALG", "ddt-1.4.4,leidenalg-0.8.8")
