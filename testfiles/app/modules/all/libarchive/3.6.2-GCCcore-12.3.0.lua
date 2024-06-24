help([==[

Description
===========
Multi-format archive and compression library


More information
================
 - Homepage: https://www.libarchive.org/
]==])

whatis([==[Description: 
 Multi-format archive and compression library
]==])
whatis([==[Homepage: https://www.libarchive.org/]==])
whatis([==[URL: https://www.libarchive.org/]==])

local root = "/app/software/libarchive/3.6.2-GCCcore-12.3.0"

conflict("libarchive")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-12.3.0") ) then
    load("zlib/1.2.13-GCCcore-12.3.0")
end

if not ( isloaded("XZ/5.4.2-GCCcore-12.3.0") ) then
    load("XZ/5.4.2-GCCcore-12.3.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBARCHIVE", root)
setenv("EBVERSIONLIBARCHIVE", "3.6.2")
setenv("EBDEVELLIBARCHIVE", pathJoin(root, "logs/libarchive-3.6.2-GCCcore-12.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
