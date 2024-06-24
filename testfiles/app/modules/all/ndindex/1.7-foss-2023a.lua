help([==[

Description
===========
ndindex is a library that allows representing and manipulating objects that can be valid indices
 to numpy arrays, i.e., slices, integers, ellipses, None, integer and boolean arrays, and tuples thereof.


More information
================
 - Homepage: https://quansight-labs.github.io/ndindex/
]==])

whatis([==[Description: ndindex is a library that allows representing and manipulating objects that can be valid indices
 to numpy arrays, i.e., slices, integers, ellipses, None, integer and boolean arrays, and tuples thereof.]==])
whatis([==[Homepage: https://quansight-labs.github.io/ndindex/]==])
whatis([==[URL: https://quansight-labs.github.io/ndindex/]==])

local root = "/app/software/ndindex/1.7-foss-2023a"

conflict("ndindex")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNDINDEX", root)
setenv("EBVERSIONNDINDEX", "1.7")
setenv("EBDEVELNDINDEX", pathJoin(root, "logs/ndindex-1.7-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
