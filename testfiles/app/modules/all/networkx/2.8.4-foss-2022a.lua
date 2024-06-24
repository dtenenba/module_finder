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

local root = "/app/software/networkx/2.8.4-foss-2022a"

conflict("networkx")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETWORKX", root)
setenv("EBVERSIONNETWORKX", "2.8.4")
setenv("EBDEVELNETWORKX", pathJoin(root, "logs/networkx-2.8.4-foss-2022a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
