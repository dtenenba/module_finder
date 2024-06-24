help([==[

Description
===========
NetworkX is a Python package for the creation, manipulation,
and study of the structure, dynamics, and functions of complex networks.


More information
================
 - Homepage: https://pypi.python.org/pypi/networkx
]==])

whatis([==[Description: NetworkX is a Python package for the creation, manipulation,
and study of the structure, dynamics, and functions of complex networks.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/networkx]==])
whatis([==[URL: https://pypi.python.org/pypi/networkx]==])

local root = "/app/software/networkx/2.6.3-foss-2021b"

conflict("networkx")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETWORKX", root)
setenv("EBVERSIONNETWORKX", "2.6.3")
setenv("EBDEVELNETWORKX", pathJoin(root, "logs/networkx-2.6.3-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
