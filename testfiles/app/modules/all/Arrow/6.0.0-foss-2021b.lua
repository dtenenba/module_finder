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

local root = "/app/software/Arrow/6.0.0-foss-2021b"

conflict("Arrow")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("Boost/1.77.0-GCC-11.2.0") ) then
    load("Boost/1.77.0-GCC-11.2.0")
end

if not ( isloaded("lz4/1.9.3-GCCcore-11.2.0") ) then
    load("lz4/1.9.3-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("zstd/1.5.0-GCCcore-11.2.0") ) then
    load("zstd/1.5.0-GCCcore-11.2.0")
end

if not ( isloaded("snappy/1.1.9-GCCcore-11.2.0") ) then
    load("snappy/1.1.9-GCCcore-11.2.0")
end

if not ( isloaded("RapidJSON/1.1.0-GCCcore-11.2.0") ) then
    load("RapidJSON/1.1.0-GCCcore-11.2.0")
end

if not ( isloaded("RE2/2022-02-01-GCCcore-11.2.0") ) then
    load("RE2/2022-02-01-GCCcore-11.2.0")
end

if not ( isloaded("utf8proc/2.6.1-GCCcore-11.2.0") ) then
    load("utf8proc/2.6.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARROW", root)
setenv("EBVERSIONARROW", "6.0.0")
setenv("EBDEVELARROW", pathJoin(root, "logs/Arrow-6.0.0-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
