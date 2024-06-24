help([==[

Description
===========
Hunspell is a spell checker and morphological analyzer 
library and program designed for languageswith rich morphology and 
complex word compounding or character encoding.


More information
================
 - Homepage: http://hunspell.github.io/
]==])

whatis([==[Description: Hunspell is a spell checker and morphological analyzer 
library and program designed for languageswith rich morphology and 
complex word compounding or character encoding.]==])
whatis([==[Homepage: http://hunspell.github.io/]==])
whatis([==[URL: http://hunspell.github.io/]==])

local root = "/app/software/hunspell/1.7.1-GCCcore-11.2.0"

conflict("hunspell")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("gettext/0.21-GCCcore-11.2.0") ) then
    load("gettext/0.21-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHUNSPELL", root)
setenv("EBVERSIONHUNSPELL", "1.7.1")
setenv("EBDEVELHUNSPELL", pathJoin(root, "logs/hunspell-1.7.1-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
