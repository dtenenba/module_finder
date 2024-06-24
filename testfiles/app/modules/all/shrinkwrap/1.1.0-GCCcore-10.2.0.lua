help([==[

Description
===========
A std::streambuf wrapper for compression formats.


More information
================
 - Homepage: https://github.com/jonathonl/shrinkwrap
]==])

whatis([==[Description: A std::streambuf wrapper for compression formats.]==])
whatis([==[Homepage: https://github.com/jonathonl/shrinkwrap]==])
whatis([==[URL: https://github.com/jonathonl/shrinkwrap]==])

local root = "/app/software/shrinkwrap/1.1.0-GCCcore-10.2.0"

conflict("shrinkwrap")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("zstd/1.4.5-GCCcore-10.2.0") ) then
    load("zstd/1.4.5-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSHRINKWRAP", root)
setenv("EBVERSIONSHRINKWRAP", "1.1.0")
setenv("EBDEVELSHRINKWRAP", pathJoin(root, "logs/shrinkwrap-1.1.0-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
