help([==[

Description
===========
ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.


More information
================
 - Homepage: https://site.icu-project.org/home
]==])

whatis([==[Description: ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.]==])
whatis([==[Homepage: https://site.icu-project.org/home]==])
whatis([==[URL: https://site.icu-project.org/home]==])

local root = "/app/software/ICU/65.1-GCCcore-8.3.0"

conflict("ICU")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTICU", root)
setenv("EBVERSIONICU", "65.1")
setenv("EBDEVELICU", pathJoin(root, "logs/ICU-65.1-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
