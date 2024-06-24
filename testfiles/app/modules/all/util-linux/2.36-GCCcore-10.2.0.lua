help([==[

Description
===========
Set of Linux utilities


More information
================
 - Homepage: https://www.kernel.org/pub/linux/utils/util-linux
]==])

whatis([==[Description: Set of Linux utilities]==])
whatis([==[Homepage: https://www.kernel.org/pub/linux/utils/util-linux]==])
whatis([==[URL: https://www.kernel.org/pub/linux/utils/util-linux]==])

local root = "/app/software/util-linux/2.36-GCCcore-10.2.0"

conflict("util-linux")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-10.2.0") ) then
    load("ncurses/6.2-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTUTILMINLINUX", root)
setenv("EBVERSIONUTILMINLINUX", "2.36")
setenv("EBDEVELUTILMINLINUX", pathJoin(root, "logs/util-linux-2.36-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
