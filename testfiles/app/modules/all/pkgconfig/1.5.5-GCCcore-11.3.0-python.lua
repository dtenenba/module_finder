help([==[

Description
===========
pkgconfig is a Python module to interface with the pkg-config command line tool


More information
================
 - Homepage: https://github.com/matze/pkgconfig
]==])

whatis([==[Description: pkgconfig is a Python module to interface with the pkg-config command line tool]==])
whatis([==[Homepage: https://github.com/matze/pkgconfig]==])
whatis([==[URL: https://github.com/matze/pkgconfig]==])

local root = "/app/software/pkgconfig/1.5.5-GCCcore-11.3.0-python"

conflict("pkgconfig")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("pkgconf/1.8.0-GCCcore-11.3.0") ) then
    load("pkgconf/1.8.0-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPKGCONFIG", root)
setenv("EBVERSIONPKGCONFIG", "1.5.5")
setenv("EBDEVELPKGCONFIG", pathJoin(root, "logs/pkgconfig-1.5.5-GCCcore-11.3.0-python-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
