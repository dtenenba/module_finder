help([==[

Description
===========
pkgconfig is a Python module to interface with the pkg-config command line tool


More information
================
 - Homepage: https://github.com/matze/pkgconfig


Included extensions
===================
pkgconfig-1.5.1, poetry-0.12.17
]==])

whatis([==[Description: pkgconfig is a Python module to interface with the pkg-config command line tool]==])
whatis([==[Homepage: https://github.com/matze/pkgconfig]==])
whatis([==[URL: https://github.com/matze/pkgconfig]==])
whatis([==[Extensions: pkgconfig-1.5.1, poetry-0.12.17]==])

local root = "/app/software/pkgconfig/1.5.1-GCCcore-8.3.0-Python-3.7.4"

conflict("pkgconfig")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("pkg-config/0.29.2-GCCcore-8.3.0") ) then
    load("pkg-config/0.29.2-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPKGCONFIG", root)
setenv("EBVERSIONPKGCONFIG", "1.5.1")
setenv("EBDEVELPKGCONFIG", pathJoin(root, "logs/pkgconfig-1.5.1-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTPKGCONFIG", "poetry-0.12.17,pkgconfig-1.5.1")
