help([==[

Description
===========
fhDev is a bundle of development libraris that is compatible with LMOD modules. 

]==])

whatis([==[Description: fhDev Fred Hutch Development environment is a collection
 of development tools that will work with LMOD modules for a given environment.
 ]==])
whatis([==[Homepage: https://fredhutch.github.io/easybuild-life-sciences/]==])
whatis([==[URL: https://fredhutch.github.io/easybuild-life-sciences/]==])

local root = "/app/software/Emacs/26.3-GCCcore-8.3.0"

conflict("Emacs")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Autotools/20180311-GCCcore-8.3.0") ) then
    load("Autotools/20180311-GCCcore-8.3.0")
end

if not ( isloaded("libtool/2.4.6-GCCcore-8.3.0") ) then
    load("libtool/2.4.6-GCCcore-8.3.0")
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

-- hand-built with vim 
-- jfdey Aug 12, 2020
