help([==[

Description
===========
GNU Emacs is an extensible, customizable text editor—and more.
 At its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming language
 with extensions to support text editing.


More information
================
 - Homepage: http://www.gnu.org/software/emacs/
]==])

whatis([==[Description: GNU Emacs is an extensible, customizable text editor—and more.
 At its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming language
 with extensions to support text editing.]==])
whatis([==[Homepage: http://www.gnu.org/software/emacs/]==])
whatis([==[URL: http://www.gnu.org/software/emacs/]==])

local root = "/app/software/Emacs/26.3-GCCcore-8.3.0"

conflict("Emacs")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("giflib/5.0.5-GCCcore-8.3.0") ) then
    load("giflib/5.0.5-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEMACS", root)
setenv("EBVERSIONEMACS", "26.3")
setenv("EBDEVELEMACS", pathJoin(root, "logs/Emacs-26.3-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.0
