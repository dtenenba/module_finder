help([==[

Description
===========
Enchant aims to provide a simple but comprehensive abstraction for dealing
with different spell checking libraries in a consistent way. A client, such
as a text editor or word processor, need not know anything about a specific
spell-checker, and since all back-ends are plugins, new spell-checkers can
be added without needing any change to the program using Enchant.


More information
================
 - Homepage: https://github.com/AbiWord/enchant
]==])

whatis([==[Description: Enchant aims to provide a simple but comprehensive abstraction for dealing
with different spell checking libraries in a consistent way. A client, such
as a text editor or word processor, need not know anything about a specific
spell-checker, and since all back-ends are plugins, new spell-checkers can
be added without needing any change to the program using Enchant.]==])
whatis([==[Homepage: https://github.com/AbiWord/enchant]==])
whatis([==[URL: https://github.com/AbiWord/enchant]==])

local root = "/app/software/enchant-2/2.3.3-GCCcore-11.2.0"

conflict("enchant-2")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("hunspell/1.7.1-GCCcore-11.2.0") ) then
    load("hunspell/1.7.1-GCCcore-11.2.0")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTENCHANTMIN2", root)
setenv("EBVERSIONENCHANTMIN2", "2.3.3")
setenv("EBDEVELENCHANTMIN2", pathJoin(root, "logs/enchant-2-2.3.3-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
