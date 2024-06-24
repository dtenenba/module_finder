help([==[

Description
===========
GNU Emacs is an extensible, customizable text editor--and more.
 At its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming
 language with extensions to support text editing.


More information
================
 - Homepage: https://www.gnu.org/software/emacs/
]==])

whatis([==[Description: GNU Emacs is an extensible, customizable text editor--and more.
 At its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming
 language with extensions to support text editing.]==])
whatis([==[Homepage: https://www.gnu.org/software/emacs/]==])
whatis([==[URL: https://www.gnu.org/software/emacs/]==])

local root = "/app/software/Emacs/27.1-GCCcore-10.2.0"

conflict("Emacs")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.2.0") ) then
    load("libpng/1.6.37-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-10.2.0") ) then
    load("ncurses/6.2-GCCcore-10.2.0")
end

if not ( isloaded("LibTIFF/4.1.0-GCCcore-10.2.0") ) then
    load("LibTIFF/4.1.0-GCCcore-10.2.0")
end

if not ( isloaded("X11/20201008-GCCcore-10.2.0") ) then
    load("X11/20201008-GCCcore-10.2.0")
end

if not ( isloaded("GTK+/3.24.23-GCCcore-10.2.0") ) then
    load("GTK+/3.24.23-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEMACS", root)
setenv("EBVERSIONEMACS", "27.1")
setenv("EBDEVELEMACS", pathJoin(root, "logs/Emacs-27.1-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
