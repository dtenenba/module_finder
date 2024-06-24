help([==[

Description
===========
Guile is a programming language, designed to help programmers create flexible
 applications that can be extended by users or other programmers with plug-ins,
 modules, or scripts.


More information
================
 - Homepage: https://www.gnu.org/software/guile/
]==])

whatis([==[Description: 
 Guile is a programming language, designed to help programmers create flexible
 applications that can be extended by users or other programmers with plug-ins,
 modules, or scripts.
]==])
whatis([==[Homepage: https://www.gnu.org/software/guile/]==])
whatis([==[URL: https://www.gnu.org/software/guile/]==])

local root = "/app/software/Guile/3.0.7-GCCcore-11.2.0"

conflict("Guile")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("gc/8.2.0-GCCcore-11.2.0") ) then
    load("gc/8.2.0-GCCcore-11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

if not ( isloaded("libffi/3.4.2-GCCcore-11.2.0") ) then
    load("libffi/3.4.2-GCCcore-11.2.0")
end

if not ( isloaded("libunistring/1.0-GCCcore-11.2.0") ) then
    load("libunistring/1.0-GCCcore-11.2.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGUILE", root)
setenv("EBVERSIONGUILE", "3.0.7")
setenv("EBDEVELGUILE", pathJoin(root, "logs/Guile-3.0.7-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
