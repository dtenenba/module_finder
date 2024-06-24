help([==[

Description
===========
A C library for reading/writing high-throughput sequencing data.
 This package includes the utilities bgzip and tabix


More information
================
 - Homepage: https://www.htslib.org/
]==])

whatis([==[Description: A C library for reading/writing high-throughput sequencing data.
 This package includes the utilities bgzip and tabix]==])
whatis([==[Homepage: https://www.htslib.org/]==])
whatis([==[URL: https://www.htslib.org/]==])

local root = "/app/software/HTSlib/1.10.2-GCC-8.3.0"

conflict("HTSlib")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHTSLIB", root)
setenv("EBVERSIONHTSLIB", "1.10.2")
setenv("EBDEVELHTSLIB", pathJoin(root, "logs/HTSlib-1.10.2-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
