help([==[

Description
===========
Interface to various variant calling formats.


More information
================
 - Homepage: https://github.com/statgen/savvy
]==])

whatis([==[Description: Interface to various variant calling formats.]==])
whatis([==[Homepage: https://github.com/statgen/savvy]==])
whatis([==[URL: https://github.com/statgen/savvy]==])

local root = "/app/software/savvy/2.0.1-GCC-10.2.0"

conflict("savvy")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("HTSlib/1.11-GCC-10.2.0") ) then
    load("HTSlib/1.11-GCC-10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

if not ( isloaded("cURL/7.72.0-GCCcore-10.2.0") ) then
    load("cURL/7.72.0-GCCcore-10.2.0")
end

if not ( isloaded("shrinkwrap/1.1.0-GCCcore-10.2.0") ) then
    load("shrinkwrap/1.1.0-GCCcore-10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("zstd/1.4.5-GCCcore-10.2.0") ) then
    load("zstd/1.4.5-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSAVVY", root)
setenv("EBVERSIONSAVVY", "2.0.1")
setenv("EBDEVELSAVVY", pathJoin(root, "logs/savvy-2.0.1-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
