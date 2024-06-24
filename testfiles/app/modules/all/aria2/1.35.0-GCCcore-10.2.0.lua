help([==[

Description
===========
aria2 is a lightweight multi-protocol and multi-source command-line download utility.


More information
================
 - Homepage: https://aria2.github.io/
]==])

whatis([==[Description: aria2 is a lightweight multi-protocol and multi-source command-line download utility.]==])
whatis([==[Homepage: https://aria2.github.io/]==])
whatis([==[URL: https://aria2.github.io/]==])

local root = "/app/software/aria2/1.35.0-GCCcore-10.2.0"

conflict("aria2")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

if not ( isloaded("SQLite/3.33.0-GCCcore-10.2.0") ) then
    load("SQLite/3.33.0-GCCcore-10.2.0")
end

if not ( isloaded("c-ares/1.17.2-GCCcore-10.2.0") ) then
    load("c-ares/1.17.2-GCCcore-10.2.0")
end

if not ( isloaded("OpenSSL/1.1.1h-GCCcore-10.2.0") ) then
    load("OpenSSL/1.1.1h-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARIA2", root)
setenv("EBVERSIONARIA2", "1.35.0")
setenv("EBDEVELARIA2", pathJoin(root, "logs/aria2-1.35.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.4.1
