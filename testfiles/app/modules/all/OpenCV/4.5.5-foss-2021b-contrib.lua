help([==[

Description
===========
OpenCV (Open Source Computer Vision Library) is an open source computer vision
 and machine learning software library. OpenCV was built to provide
 a common infrastructure for computer vision applications and to accelerate
 the use of machine perception in the commercial products.
 Includes extra modules for OpenCV from the contrib repository.


More information
================
 - Homepage: https://opencv.org/
]==])

whatis([==[Description: OpenCV (Open Source Computer Vision Library) is an open source computer vision
 and machine learning software library. OpenCV was built to provide
 a common infrastructure for computer vision applications and to accelerate
 the use of machine perception in the commercial products.
 Includes extra modules for OpenCV from the contrib repository.]==])
whatis([==[Homepage: https://opencv.org/]==])
whatis([==[URL: https://opencv.org/]==])

local root = "/app/software/OpenCV/4.5.5-foss-2021b-contrib"

conflict("OpenCV")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("FFmpeg/4.3.2-GCCcore-11.2.0") ) then
    load("FFmpeg/4.3.2-GCCcore-11.2.0")
end

if not ( isloaded("freetype/2.11.0-GCCcore-11.2.0") ) then
    load("freetype/2.11.0-GCCcore-11.2.0")
end

if not ( isloaded("HarfBuzz/2.8.2-GCCcore-11.2.0") ) then
    load("HarfBuzz/2.8.2-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.2.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.2.0")
end

if not ( isloaded("libwebp/1.2.0-GCCcore-11.2.0") ) then
    load("libwebp/1.2.0-GCCcore-11.2.0")
end

if not ( isloaded("OpenEXR/3.1.1-GCCcore-11.2.0") ) then
    load("OpenEXR/3.1.1-GCCcore-11.2.0")
end

if not ( isloaded("JasPer/2.0.33-GCCcore-11.2.0") ) then
    load("JasPer/2.0.33-GCCcore-11.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("ant/1.10.11-Java-11") ) then
    load("ant/1.10.11-Java-11")
end

if not ( isloaded("GLib/2.69.1-GCCcore-11.2.0") ) then
    load("GLib/2.69.1-GCCcore-11.2.0")
end

if not ( isloaded("GTK3/3.24.31-GCCcore-11.2.0") ) then
    load("GTK3/3.24.31-GCCcore-11.2.0")
end

if not ( isloaded("HDF5/1.12.1-gompi-2021b") ) then
    load("HDF5/1.12.1-gompi-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENCV", root)
setenv("EBVERSIONOPENCV", "4.5.5")
setenv("EBDEVELOPENCV", pathJoin(root, "logs/OpenCV-4.5.5-foss-2021b-contrib-easybuild-devel"))

prepend_path("CLASSPATH", pathJoin(root, "share/OpenCV/java"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
