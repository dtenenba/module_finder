help([==[

Description
===========
The libnl suite is a collection of libraries providing APIs
 to netlink protocol based Linux kernel interfaces.


More information
================
 - Homepage: 
]==])

whatis([==[Description: The libnl suite is a collection of libraries providing APIs
 to netlink protocol based Linux kernel interfaces.]==])
whatis([==[Homepage: ]==])
whatis([==[URL: ]==])

local root = "/app/software/libasound/1.2.2-GCCcore-8.3.0"

conflict("libasound")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBASOUND", root)
setenv("EBVERSIONLIBASOUND", "1.2.2")
setenv("EBDEVELLIBASOUND", pathJoin(root, "logs/libasound-1.2.2-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
