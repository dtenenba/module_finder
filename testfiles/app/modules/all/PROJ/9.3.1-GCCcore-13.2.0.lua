help([==[

Description
===========
Program proj is a standard Unix filter function which converts
geographic longitude and latitude coordinates into cartesian coordinates


More information
================
 - Homepage: https://proj.org
]==])

whatis([==[Description: Program proj is a standard Unix filter function which converts
geographic longitude and latitude coordinates into cartesian coordinates]==])
whatis([==[Homepage: https://proj.org]==])
whatis([==[URL: https://proj.org]==])

local root = "/app/software/PROJ/9.3.1-GCCcore-13.2.0"

conflict("PROJ")

if not ( isloaded("GCCcore/13.2.0") ) then
    load("GCCcore/13.2.0")
end

if not ( isloaded("SQLite/3.43.1-GCCcore-13.2.0") ) then
    load("SQLite/3.43.1-GCCcore-13.2.0")
end

if not ( isloaded("LibTIFF/4.6.0-GCCcore-13.2.0") ) then
    load("LibTIFF/4.6.0-GCCcore-13.2.0")
end

if not ( isloaded("cURL/8.3.0-GCCcore-13.2.0") ) then
    load("cURL/8.3.0-GCCcore-13.2.0")
end

if not ( isloaded("XZ/5.4.4-GCCcore-13.2.0") ) then
    load("XZ/5.4.4-GCCcore-13.2.0")
end

if not ( isloaded("nlohmann_json/3.11.3-GCCcore-13.2.0") ) then
    load("nlohmann_json/3.11.3-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPROJ", root)
setenv("EBVERSIONPROJ", "9.3.1")
setenv("EBDEVELPROJ", pathJoin(root, "logs/PROJ-9.3.1-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
