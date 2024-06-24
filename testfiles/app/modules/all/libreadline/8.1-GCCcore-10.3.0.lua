help([==[

Description
===========
The GNU Readline library provides a set of functions for use by applications
 that allow users to edit command lines as they are typed in. Both Emacs and
 vi editing modes are available. The Readline library includes additional
 functions to maintain a list of previously-entered command lines, to recall
 and perhaps reedit those lines, and perform csh-like history expansion on
 previous commands.


More information
================
 - Homepage: https://tiswww.case.edu/php/chet/readline/rltop.html
]==])

whatis([==[Description: 
 The GNU Readline library provides a set of functions for use by applications
 that allow users to edit command lines as they are typed in. Both Emacs and
 vi editing modes are available. The Readline library includes additional
 functions to maintain a list of previously-entered command lines, to recall
 and perhaps reedit those lines, and perform csh-like history expansion on
 previous commands.
]==])
whatis([==[Homepage: https://tiswww.case.edu/php/chet/readline/rltop.html]==])
whatis([==[URL: https://tiswww.case.edu/php/chet/readline/rltop.html]==])

local root = "/app/software/libreadline/8.1-GCCcore-10.3.0"

conflict("libreadline")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-10.3.0") ) then
    load("ncurses/6.2-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBREADLINE", root)
setenv("EBVERSIONLIBREADLINE", "8.1")
setenv("EBDEVELLIBREADLINE", pathJoin(root, "logs/libreadline-8.1-GCCcore-10.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.1
