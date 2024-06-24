help([==[

Description
===========
EMAN2 is the successor to EMAN1. It is a broadly based greyscale scientific image processing suite
 with a primary focus on processing data from transmission electron microscopes.


More information
================
 - Homepage: https://blake.bcm.edu/emanwiki/EMAN2
]==])

whatis([==[Description: EMAN2 is the successor to EMAN1. It is a broadly based greyscale scientific image processing suite
 with a primary focus on processing data from transmission electron microscopes. ]==])
whatis([==[Homepage: https://blake.bcm.edu/emanwiki/EMAN2]==])
whatis([==[URL: https://blake.bcm.edu/emanwiki/EMAN2]==])

local root = "/app/software/EMAN2/2.3-foss-2019b-Python-2.7.16"

conflict("EMAN2")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("Boost.Python/1.64.0-gompi-2019b") ) then
    load("Boost.Python/1.64.0-gompi-2019b")
end

if not ( isloaded("freetype/2.10.1-GCCcore-8.3.0") ) then
    load("freetype/2.10.1-GCCcore-8.3.0")
end

if not ( isloaded("FTGL/2.1.3-rc5-GCCcore-8.3.0") ) then
    load("FTGL/2.1.3-rc5-GCCcore-8.3.0")
end

if not ( isloaded("GSL/2.6-GCC-8.3.0") ) then
    load("GSL/2.6-GCC-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("HDF5/1.10.5-gompi-2019b") ) then
    load("HDF5/1.10.5-gompi-2019b")
end

if not ( isloaded("IPython/5.8.0-foss-2019b-Python-2.7.16") ) then
    load("IPython/5.8.0-foss-2019b-Python-2.7.16")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-8.3.0") ) then
    load("libGLU/9.0.1-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("LibTIFF/4.0.10-GCCcore-8.3.0") ) then
    load("LibTIFF/4.0.10-GCCcore-8.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("Mesa/19.2.1-GCCcore-8.3.0") ) then
    load("Mesa/19.2.1-GCCcore-8.3.0")
end

if not ( isloaded("PyQt5/5.12.1-GCCcore-8.3.0-Python-2.7.16") ) then
    load("PyQt5/5.12.1-GCCcore-8.3.0-Python-2.7.16")
end

if not ( isloaded("bsddb3/6.2.6-GCCcore-8.3.0") ) then
    load("bsddb3/6.2.6-GCCcore-8.3.0")
end

if not ( isloaded("PyOpenGL/3.1.5-GCCcore-8.3.0") ) then
    load("PyOpenGL/3.1.5-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEMAN2", root)
setenv("EBVERSIONEMAN2", "2.3")
setenv("EBDEVELEMAN2", pathJoin(root, "logs/EMAN2-2.3-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.4
