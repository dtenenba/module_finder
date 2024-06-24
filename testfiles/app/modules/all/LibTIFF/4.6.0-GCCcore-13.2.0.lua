help([==[

Description
===========
tiff: Library and tools for reading and writing TIFF data files


More information
================
 - Homepage: https://libtiff.gitlab.io/libtiff/
]==])

whatis([==[Description: tiff: Library and tools for reading and writing TIFF data files]==])
whatis([==[Homepage: https://libtiff.gitlab.io/libtiff/]==])
whatis([==[URL: https://libtiff.gitlab.io/libtiff/]==])

local root = "/app/software/LibTIFF/4.6.0-GCCcore-13.2.0"

conflict("LibTIFF")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("libjpeg-turbo/3.0.1-GCCcore-13.2.0") ) then
    load("libjpeg-turbo/3.0.1-GCCcore-13.2.0")
end

if not ( isloaded("XZ/5.4.4-GCCcore-13.2.0") ) then
    load("XZ/5.4.4-GCCcore-13.2.0")
end

if not ( isloaded("jbigkit/2.1-GCCcore-13.2.0") ) then
    load("jbigkit/2.1-GCCcore-13.2.0")
end

if not ( isloaded("zstd/1.5.5-GCCcore-13.2.0") ) then
    load("zstd/1.5.5-GCCcore-13.2.0")
end

if not ( isloaded("libdeflate/1.19-GCCcore-13.2.0") ) then
    load("libdeflate/1.19-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBTIFF", root)
setenv("EBVERSIONLIBTIFF", "4.6.0")
setenv("EBDEVELLIBTIFF", pathJoin(root, "logs/LibTIFF-4.6.0-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
