help([==[

Description
===========
Very fast, header-only/compiled, C++ logging library.


More information
================
 - Homepage: https://github.com/gabime/spdlog
]==])

whatis([==[Description: Very fast, header-only/compiled, C++ logging library.]==])
whatis([==[Homepage: https://github.com/gabime/spdlog]==])
whatis([==[URL: https://github.com/gabime/spdlog]==])

local root = "/app/software/spdlog/1.10.0-GCCcore-11.2.0"

conflict("spdlog")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSPDLOG", root)
setenv("EBVERSIONSPDLOG", "1.10.0")
setenv("EBDEVELSPDLOG", pathJoin(root, "logs/spdlog-1.10.0-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
