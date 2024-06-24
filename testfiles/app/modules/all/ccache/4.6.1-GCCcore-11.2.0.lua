help([==[

Description
===========
Ccache (or “ccache”) is a compiler cache. It speeds up recompilation by
caching previous compilations and detecting when the same compilation is being done again


More information
================
 - Homepage: https://ccache.dev/
]==])

whatis([==[Description: Ccache (or “ccache”) is a compiler cache. It speeds up recompilation by
caching previous compilations and detecting when the same compilation is being done again]==])
whatis([==[Homepage: https://ccache.dev/]==])
whatis([==[URL: https://ccache.dev/]==])

local root = "/app/software/ccache/4.6.1-GCCcore-11.2.0"

conflict("ccache")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("hiredis/1.0.2-GCCcore-11.2.0") ) then
    load("hiredis/1.0.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCCACHE", root)
setenv("EBVERSIONCCACHE", "4.6.1")
setenv("EBDEVELCCACHE", pathJoin(root, "logs/ccache-4.6.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
