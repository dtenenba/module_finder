help([==[

Description
===========
R is a free software environment for statistical computing
 and graphics.


More information
================
 - Homepage: https://www.r-project.org/

]==])

whatis([==[Description: R is a free software environment for statistical computing
 and graphics.]==])
whatis([==[Homepage: https://www.r-project.org/]==])
whatis([==[URL: https://www.r-project.org/]==])

local root = "/app/software/R/4.3.3-gfbf-2023b"

conflict("R")

if not ( isloaded("gfbf/2023b") ) then
    load("gfbf/2023b")
end

if not ( isloaded("X11/20231019-GCCcore-13.2.0") ) then
    load("X11/20231019-GCCcore-13.2.0")
end

if not ( isloaded("Mesa/23.1.9-GCCcore-13.2.0") ) then
    load("Mesa/23.1.9-GCCcore-13.2.0")
end

if not ( isloaded("libGLU/9.0.3-GCCcore-13.2.0") ) then
    load("libGLU/9.0.3-GCCcore-13.2.0")
end

if not ( isloaded("cairo/1.18.0-GCCcore-13.2.0") ) then
    load("cairo/1.18.0-GCCcore-13.2.0")
end

if not ( isloaded("libreadline/8.2-GCCcore-13.2.0") ) then
    load("libreadline/8.2-GCCcore-13.2.0")
end

if not ( isloaded("ncurses/6.4-GCCcore-13.2.0") ) then
    load("ncurses/6.4-GCCcore-13.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-13.2.0") ) then
    load("bzip2/1.0.8-GCCcore-13.2.0")
end

if not ( isloaded("XZ/5.4.4-GCCcore-13.2.0") ) then
    load("XZ/5.4.4-GCCcore-13.2.0")
end

if not ( isloaded("zlib/1.2.13-GCCcore-13.2.0") ) then
    load("zlib/1.2.13-GCCcore-13.2.0")
end

if not ( isloaded("SQLite/3.43.1-GCCcore-13.2.0") ) then
    load("SQLite/3.43.1-GCCcore-13.2.0")
end

if not ( isloaded("PCRE2/10.42-GCCcore-13.2.0") ) then
    load("PCRE2/10.42-GCCcore-13.2.0")
end

if not ( isloaded("libpng/1.6.40-GCCcore-13.2.0") ) then
    load("libpng/1.6.40-GCCcore-13.2.0")
end

if not ( isloaded("libjpeg-turbo/3.0.1-GCCcore-13.2.0") ) then
    load("libjpeg-turbo/3.0.1-GCCcore-13.2.0")
end

if not ( isloaded("LibTIFF/4.6.0-GCCcore-13.2.0") ) then
    load("LibTIFF/4.6.0-GCCcore-13.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("libgit2/1.7.2-GCCcore-13.2.0") ) then
    load("libgit2/1.7.2-GCCcore-13.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("cURL/8.3.0-GCCcore-13.2.0") ) then
    load("cURL/8.3.0-GCCcore-13.2.0")
end

if not ( isloaded("Tk/8.6.13-GCCcore-13.2.0") ) then
    load("Tk/8.6.13-GCCcore-13.2.0")
end

if not ( isloaded("HarfBuzz/8.2.2-GCCcore-13.2.0") ) then
    load("HarfBuzz/8.2.2-GCCcore-13.2.0")
end

if not ( isloaded("FriBidi/1.0.13-GCCcore-13.2.0") ) then
    load("FriBidi/1.0.13-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/R/lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTR", root)
setenv("EBVERSIONR", "4.3.3")
setenv("EBDEVELR", pathJoin(root, "logs/R-4.3.3-gfbf-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
