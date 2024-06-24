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

local root = "/app/software/networkx/3.2.1-gfbf-2023b"

conflict("networkx")

if not ( isloaded("gfbf/2023b") ) then
    load("gfbf/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNETWORKX", root)
setenv("EBVERSIONNETWORKX", "3.2.1")
setenv("EBDEVELNETWORKX", pathJoin(root, "logs/networkx-3.2.1-gfbf-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
