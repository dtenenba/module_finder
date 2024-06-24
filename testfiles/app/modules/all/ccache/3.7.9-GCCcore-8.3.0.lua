help([==[

Description
===========
Cache for C/C++ compilers


More information
================
 - Homepage: http://ccache.samba.org/
]==])

whatis([==[Description: Cache for C/C++ compilers]==])
whatis([==[Homepage: http://ccache.samba.org/]==])
whatis([==[URL: http://ccache.samba.org/]==])

local root = "/app/software/ccache/3.7.9-GCCcore-8.3.0"

conflict("ccache")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCCACHE", root)
setenv("EBVERSIONCCACHE", "3.7.9")
setenv("EBDEVELCCACHE", pathJoin(root, "logs/ccache-3.7.9-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
