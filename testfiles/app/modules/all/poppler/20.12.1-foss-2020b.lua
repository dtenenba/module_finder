help([==[

Description
===========
Poppler is a PDF rendering library based on the xpdf-3.0 code
 base.


More information
================
 - Homepage: https://poppler.freedesktop.org/
]==])

whatis([==[Description: Poppler is a PDF rendering library based on the xpdf-3.0 code
 base.]==])
whatis([==[Homepage: https://poppler.freedesktop.org/]==])
whatis([==[URL: https://poppler.freedesktop.org/]==])

local root = "/app/software/poppler/20.12.1-foss-2020b"

conflict("poppler")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPOPPLER", root)
setenv("EBVERSIONPOPPLER", "20.12.1")
setenv("EBDEVELPOPPLER", pathJoin(root, "logs/poppler-20.12.1-foss-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
