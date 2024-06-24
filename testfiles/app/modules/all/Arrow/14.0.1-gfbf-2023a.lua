help([==[

Description
===========
Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.


More information
================
 - Homepage: https://arrow.apache.org


Included extensions
===================
pyarrow-14.0.1
]==])

whatis([==[Description: Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.]==])
whatis([==[Homepage: https://arrow.apache.org]==])
whatis([==[URL: https://arrow.apache.org]==])
whatis([==[Extensions: pyarrow-14.0.1]==])

local root = "/app/software/Arrow/14.0.1-gfbf-2023a"

conflict("Arrow")

if not ( isloaded("gfbf/2023a") ) then
    load("gfbf/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("Boost/1.82.0-GCC-12.3.0") ) then
    load("Boost/1.82.0-GCC-12.3.0")
end

if not ( isloaded("lz4/1.9.4-GCCcore-12.3.0") ) then
    load("lz4/1.9.4-GCCcore-12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-12.3.0") ) then
    load("bzip2/1.0.8-GCCcore-12.3.0")
end

if not ( isloaded("zstd/1.5.5-GCCcore-12.3.0") ) then
    load("zstd/1.5.5-GCCcore-12.3.0")
end

if not ( isloaded("snappy/1.1.10-GCCcore-12.3.0") ) then
    load("snappy/1.1.10-GCCcore-12.3.0")
end

if not ( isloaded("RapidJSON/1.1.0-20230928-GCCcore-12.3.0") ) then
    load("RapidJSON/1.1.0-20230928-GCCcore-12.3.0")
end

if not ( isloaded("RE2/2023-08-01-GCCcore-12.3.0") ) then
    load("RE2/2023-08-01-GCCcore-12.3.0")
end

if not ( isloaded("utf8proc/2.8.0-GCCcore-12.3.0") ) then
    load("utf8proc/2.8.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARROW", root)
setenv("EBVERSIONARROW", "14.0.1")
setenv("EBDEVELARROW", pathJoin(root, "logs/Arrow-14.0.1-gfbf-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTARROW", "pyarrow-14.0.1")
