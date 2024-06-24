help([==[

Description
===========
Python package (compatible with SCope) to create .loom files and extend them with
 other data e.g.: SCENIC regulons


More information
================
 - Homepage: https://loomxpy.readthedocs.io/


Included extensions
===================
ctxcore-0.2.0, dataclasses_json-0.5.14, loompy-3.0.7, loomxpy-0.4.2,
marshmallow-3.20.1, mypy_extensions-1.0.0, networkx-3.0, typing_inspect-0.9.0
]==])

whatis([==[Description: Python package (compatible with SCope) to create .loom files and extend them with
 other data e.g.: SCENIC regulons]==])
whatis([==[Homepage: https://loomxpy.readthedocs.io/]==])
whatis([==[URL: https://loomxpy.readthedocs.io/]==])
whatis([==[Extensions: ctxcore-0.2.0, dataclasses_json-0.5.14, loompy-3.0.7, loomxpy-0.4.2, marshmallow-3.20.1, mypy_extensions-1.0.0, networkx-3.0, typing_inspect-0.9.0]==])

local root = "/app/software/LoomXpy/0.4.2-foss-2022b"

conflict("LoomXpy")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("pySCENIC/0.12.1-foss-2022b") ) then
    load("pySCENIC/0.12.1-foss-2022b")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("scikit-learn/1.2.1-gfbf-2022b") ) then
    load("scikit-learn/1.2.1-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLOOMXPY", root)
setenv("EBVERSIONLOOMXPY", "0.4.2")
setenv("EBDEVELLOOMXPY", pathJoin(root, "logs/LoomXpy-0.4.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTLOOMXPY", "ctxcore-0.2.0,networkx-3.0,marshmallow-3.20.1,mypy_extensions-1.0.0,typing_inspect-0.9.0,dataclasses_json-0.5.14,loompy-3.0.7,loomxpy-0.4.2")
