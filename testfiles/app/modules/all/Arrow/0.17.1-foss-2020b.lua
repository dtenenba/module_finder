help([==[

Description
===========
Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.


More information
================
 - Homepage: https://arrow.apache.org
]==])

whatis([==[Description: Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.]==])
whatis([==[Homepage: https://arrow.apache.org]==])
whatis([==[URL: https://arrow.apache.org]==])

local root = "/app/software/Arrow/0.17.1-foss-2020b"

conflict("Arrow")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARROW", root)
setenv("EBVERSIONARROW", "0.17.1")
setenv("EBDEVELARROW", pathJoin(root, "logs/Arrow-0.17.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
