help([==[

Description
===========
A C library for reading/writing high-throughput sequencing data.
 This package includes the utilities bgzip and tabix


More information
================
 - Homepage: http://www.htslib.org/
]==])

whatis([==[Description: A C library for reading/writing high-throughput sequencing data.
 This package includes the utilities bgzip and tabix]==])
whatis([==[Homepage: http://www.htslib.org/]==])
whatis([==[URL: http://www.htslib.org/]==])

local root = "/app/software/HTSlib/1.9-GCC-11.2.0"

conflict("HTSlib")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-11.2.0") ) then
    load("XZ/5.2.5-GCCcore-11.2.0")
end

if not ( isloaded("cURL/7.78.0-GCCcore-11.2.0") ) then
    load("cURL/7.78.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHTSLIB", root)
setenv("EBVERSIONHTSLIB", "1.9")
setenv("EBDEVELHTSLIB", pathJoin(root, "logs/HTSlib-1.9-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
