help([==[

Description
===========
libxml++ is a C++ wrapper for the libxml XML parser library.


More information
================
 - Homepage: http://libxmlplusplus.sourceforge.net
]==])

whatis([==[Description: libxml++ is a C++ wrapper for the libxml XML parser library.]==])
whatis([==[Homepage: http://libxmlplusplus.sourceforge.net]==])
whatis([==[URL: http://libxmlplusplus.sourceforge.net]==])

local root = "/app/software/libxml++/2.40.1-GCCcore-8.3.0"

conflict("libxml++")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("GLibmm/2.49.7-GCCcore-8.3.0") ) then
    load("GLibmm/2.49.7-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBXMLPLUSPLUS", root)
setenv("EBVERSIONLIBXMLPLUSPLUS", "2.40.1")
setenv("EBDEVELLIBXMLPLUSPLUS", pathJoin(root, "logs/libxml++-2.40.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
