help([==[

Description
===========
RELION (for REgularised LIkelihood OptimisatioN) is a stand-alone computer
 program for Maximum A Posteriori refinement of (multiple) 3D reconstructions or 2D class
 averages in cryo-electron microscopy.


More information
================
 - Homepage: https://github.com/3dem/relion
]==])

whatis([==[Description: RELION (for REgularised LIkelihood OptimisatioN) is a stand-alone computer
 program for Maximum A Posteriori refinement of (multiple) 3D reconstructions or 2D class
 averages in cryo-electron microscopy.]==])
whatis([==[Homepage: https://github.com/3dem/relion]==])
whatis([==[URL: https://github.com/3dem/relion]==])

local root = "/app/software/RELION/3.1.2-fosscuda-2020b"

conflict("RELION")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("X11/20201008-GCCcore-10.2.0") ) then
    load("X11/20201008-GCCcore-10.2.0")
end

if not ( isloaded("LibTIFF/4.1.0-GCCcore-10.2.0") ) then
    load("LibTIFF/4.1.0-GCCcore-10.2.0")
end

if not ( isloaded("FLTK/1.3.5-GCCcore-10.2.0") ) then
    load("FLTK/1.3.5-GCCcore-10.2.0")
end

if not ( isloaded("ctffind/4.1.14-fosscuda-2020b") ) then
    load("ctffind/4.1.14-fosscuda-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRELION", root)
setenv("EBVERSIONRELION", "3.1.2")
setenv("EBDEVELRELION", pathJoin(root, "logs/RELION-3.1.2-fosscuda-2020b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
