help([==[

Description
===========
This BSD-style licensed command line editor library provides generic line editing,
history, and tokenization functions, similar to those found in GNU Readline.


More information
================
 - Homepage: http://thrysoee.dk/editline/
]==])

whatis([==[Description: This BSD-style licensed command line editor library provides generic line editing,
history, and tokenization functions, similar to those found in GNU Readline.]==])
whatis([==[Homepage: http://thrysoee.dk/editline/]==])
whatis([==[URL: http://thrysoee.dk/editline/]==])

local root = "/app/software/libedit/20191231-GCC-8.3.0"

conflict("libedit")

if not ( isloaded("GCC/8.3.0") ) then
    load("GCC/8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBEDIT", root)
setenv("EBVERSIONLIBEDIT", "20191231")
setenv("EBDEVELLIBEDIT", pathJoin(root, "logs/libedit-20191231-GCC-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.1
