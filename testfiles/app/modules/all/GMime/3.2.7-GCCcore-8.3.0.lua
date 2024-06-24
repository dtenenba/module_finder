help([==[

Description
===========
The GMime package contains a set of utilities for parsing and
 creating messages using the Multipurpose Internet Mail Extension (MIME) as
 defined by the applicable RFCs.


More information
================
 - Homepage: http://spruce.sourceforge.net/gmime/
]==])

whatis([==[Description: The GMime package contains a set of utilities for parsing and
 creating messages using the Multipurpose Internet Mail Extension (MIME) as
 defined by the applicable RFCs.]==])
whatis([==[Homepage: http://spruce.sourceforge.net/gmime/]==])
whatis([==[URL: http://spruce.sourceforge.net/gmime/]==])

local root = "/app/software/GMime/3.2.7-GCCcore-8.3.0"

conflict("GMime")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("GLib/2.62.0-GCCcore-8.3.0") ) then
    load("GLib/2.62.0-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libgpg-error/1.37-GCCcore-8.3.0") ) then
    load("libgpg-error/1.37-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGMIME", root)
setenv("EBVERSIONGMIME", "3.2.7")
setenv("EBDEVELGMIME", pathJoin(root, "logs/GMime-3.2.7-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.1
