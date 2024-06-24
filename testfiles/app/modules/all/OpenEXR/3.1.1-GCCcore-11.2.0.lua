help([==[

Description
===========
OpenEXR is a high dynamic-range (HDR) image file format developed by Industrial Light & Magic
 for use in computer imaging applications


More information
================
 - Homepage: https://www.openexr.com/
]==])

whatis([==[Description: OpenEXR is a high dynamic-range (HDR) image file format developed by Industrial Light & Magic
 for use in computer imaging applications]==])
whatis([==[Homepage: https://www.openexr.com/]==])
whatis([==[URL: https://www.openexr.com/]==])

local root = "/app/software/OpenEXR/3.1.1-GCCcore-11.2.0"

conflict("OpenEXR")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENEXR", root)
setenv("EBVERSIONOPENEXR", "3.1.1")
setenv("EBDEVELOPENEXR", pathJoin(root, "logs/OpenEXR-3.1.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.4
