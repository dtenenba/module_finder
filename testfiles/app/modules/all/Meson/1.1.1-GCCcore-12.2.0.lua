help([==[

Description
===========
Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.


More information
================
 - Homepage: https://mesonbuild.com
]==])

whatis([==[Description: Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.]==])
whatis([==[Homepage: https://mesonbuild.com]==])
whatis([==[URL: https://mesonbuild.com]==])

local root = "/app/software/Meson/1.1.1-GCCcore-12.2.0"

conflict("Meson")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("Ninja/1.11.1-GCCcore-12.2.0") ) then
    load("Ninja/1.11.1-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESON", root)
setenv("EBVERSIONMESON", "1.1.1")
setenv("EBDEVELMESON", pathJoin(root, "logs/Meson-1.1.1-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.0
