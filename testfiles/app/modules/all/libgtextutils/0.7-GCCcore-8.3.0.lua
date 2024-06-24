help([==[

Description
===========
ligtextutils is a dependency of fastx-toolkit and is provided
 via the same upstream


More information
================
 - Homepage: http://hannonlab.cshl.edu/fastx_toolkit/
]==])

whatis([==[Description: ligtextutils is a dependency of fastx-toolkit and is provided
 via the same upstream]==])
whatis([==[Homepage: http://hannonlab.cshl.edu/fastx_toolkit/]==])
whatis([==[URL: http://hannonlab.cshl.edu/fastx_toolkit/]==])

local root = "/app/software/libgtextutils/0.7-GCCcore-8.3.0"

conflict("libgtextutils")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBGTEXTUTILS", root)
setenv("EBVERSIONLIBGTEXTUTILS", "0.7")
setenv("EBDEVELLIBGTEXTUTILS", pathJoin(root, "logs/libgtextutils-0.7-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
