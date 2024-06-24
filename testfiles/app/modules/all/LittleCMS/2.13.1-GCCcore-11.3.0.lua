help([==[

Description
===========
Little CMS intends to be an OPEN SOURCE small-footprint color management engine,
 with special focus on accuracy and performance.


More information
================
 - Homepage: https://www.littlecms.com/
]==])

whatis([==[Description:  Little CMS intends to be an OPEN SOURCE small-footprint color management engine,
 with special focus on accuracy and performance. ]==])
whatis([==[Homepage: https://www.littlecms.com/]==])
whatis([==[URL: https://www.littlecms.com/]==])

local root = "/app/software/LittleCMS/2.13.1-GCCcore-11.3.0"

conflict("LittleCMS")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.3-GCCcore-11.3.0") ) then
    load("libjpeg-turbo/2.1.3-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLITTLECMS", root)
setenv("EBVERSIONLITTLECMS", "2.13.1")
setenv("EBDEVELLITTLECMS", pathJoin(root, "logs/LittleCMS-2.13.1-GCCcore-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
