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

local root = "/app/software/RELION/3.1.0-foss-2019b"

conflict("RELION")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("X11/20190717-GCCcore-8.3.0") ) then
    load("X11/20190717-GCCcore-8.3.0")
end

if not ( isloaded("CUDA/10.2.89-GCC-8.3.0") ) then
    load("CUDA/10.2.89-GCC-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRELION", root)
setenv("EBVERSIONRELION", "3.1.0")
setenv("EBDEVELRELION", pathJoin(root, "logs/RELION-3.1.0-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.2.2