help([==[

Description
===========
isl is a library for manipulating sets and relations of integer points bounded by linear constraints.


More information
================
 - Homepage: http://isl.gforge.inria.fr/
]==])

whatis([==[Description: isl is a library for manipulating sets and relations of integer points bounded by linear constraints.]==])
whatis([==[Homepage: http://isl.gforge.inria.fr/]==])
whatis([==[URL: http://isl.gforge.inria.fr/]==])

local root = "/app/software/ISL/0.24-GCCcore-11.2.0"

conflict("ISL")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("GMP/6.2.1-GCCcore-11.2.0") ) then
    load("GMP/6.2.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTISL", root)
setenv("EBVERSIONISL", "0.24")
setenv("EBDEVELISL", pathJoin(root, "logs/ISL-0.24-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1