help([==[

Description
===========
Open Asset Import Library (assimp) is a library to import and export various
 3d-model-formats including scene-post-processing to generate missing render data.


More information
================
 - Homepage: https://github.com/assimp/assimp
]==])

whatis([==[Description: 
 Open Asset Import Library (assimp) is a library to import and export various
 3d-model-formats including scene-post-processing to generate missing render data.
]==])
whatis([==[Homepage: https://github.com/assimp/assimp]==])
whatis([==[URL: https://github.com/assimp/assimp]==])

local root = "/app/software/assimp/5.3.1-GCCcore-13.2.0"

conflict("assimp")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTASSIMP", root)
setenv("EBVERSIONASSIMP", "5.3.1")
setenv("EBDEVELASSIMP", pathJoin(root, "logs/assimp-5.3.1-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
