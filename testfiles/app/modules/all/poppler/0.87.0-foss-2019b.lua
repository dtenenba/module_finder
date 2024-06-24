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

local root = "/app/software/poppler/0.87.0-foss-2019b"

conflict("poppler")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
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
setenv("EBVERSIONPOPPLER", "0.87.0")
setenv("EBDEVELPOPPLER", pathJoin(root, "logs/poppler-0.87.0-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
