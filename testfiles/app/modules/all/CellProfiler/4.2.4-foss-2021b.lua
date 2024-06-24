help([==[

Description
===========
CellProfiler is a free open-source software designed to enable biologists without training in computer vision or programming to quantitatively measure phenotypes from thousands of images automatically.


More information
================
 - Homepage: http://cellprofiler.org/


Included extensions
===================
cached-property-1.5.2, CellProfiler-4.2.4, cellprofiler-core-4.2.4,
centrosome-1.2.1, deprecation-2.1.0, inflect-6.0.0, mahotas-1.4.13,
mysqlclient-2.1.1, prokaryote-2.4.4, pydantic-1.10.2, python-bioformats-4.0.6,
python-javabridge-4.0.3, PyWavelets-1.4.1, pyzmq-24.0.1, sentry-sdk-1.9.9,
urllib3-1.26.12
]==])

whatis([==[Description: CellProfiler is a free open-source software designed to enable biologists without training in computer vision or programming to quantitatively measure phenotypes from thousands of images automatically.]==])
whatis([==[Homepage: http://cellprofiler.org/]==])
whatis([==[URL: http://cellprofiler.org/]==])
whatis([==[Extensions: cached-property-1.5.2, CellProfiler-4.2.4, cellprofiler-core-4.2.4, centrosome-1.2.1, deprecation-2.1.0, inflect-6.0.0, mahotas-1.4.13, mysqlclient-2.1.1, prokaryote-2.4.4, pydantic-1.10.2, python-bioformats-4.0.6, python-javabridge-4.0.3, PyWavelets-1.4.1, pyzmq-24.0.1, sentry-sdk-1.9.9, urllib3-1.26.12]==])

local root = "/app/software/CellProfiler/4.2.4-foss-2021b"

conflict("CellProfiler")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("scikit-image/0.19.1-foss-2021b") ) then
    load("scikit-image/0.19.1-foss-2021b")
end

if not ( isloaded("pybind11/2.7.1-GCCcore-11.2.0") ) then
    load("pybind11/2.7.1-GCCcore-11.2.0")
end

if not ( isloaded("pkgconfig/1.5.5-GCCcore-11.2.0-python") ) then
    load("pkgconfig/1.5.5-GCCcore-11.2.0-python")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("boto3/1.20.13-GCCcore-11.2.0") ) then
    load("boto3/1.20.13-GCCcore-11.2.0")
end

if not ( isloaded("imageio/2.13.5-foss-2021b") ) then
    load("imageio/2.13.5-foss-2021b")
end

if not ( isloaded("wxPython/4.2.0-foss-2021b") ) then
    load("wxPython/4.2.0-foss-2021b")
end

if not ( isloaded("h5py/3.6.0-foss-2021b") ) then
    load("h5py/3.6.0-foss-2021b")
end

if not ( isloaded("Pillow/9.1.0-GCCcore-11.2.0") ) then
    load("Pillow/9.1.0-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("LibTIFF/4.3.0-GCCcore-11.2.0") ) then
    load("LibTIFF/4.3.0-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("freetype/2.11.0-GCCcore-11.2.0") ) then
    load("freetype/2.11.0-GCCcore-11.2.0")
end

if not ( isloaded("Tkinter/3.9.6-GCCcore-11.2.0") ) then
    load("Tkinter/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("MariaDB/10.6.4-GCC-11.2.0") ) then
    load("MariaDB/10.6.4-GCC-11.2.0")
end

if not ( isloaded("ZeroMQ/4.3.4-GCCcore-11.2.0") ) then
    load("ZeroMQ/4.3.4-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLPROFILER", root)
setenv("EBVERSIONCELLPROFILER", "4.2.4")
setenv("EBDEVELCELLPROFILER", pathJoin(root, "logs/CellProfiler-4.2.4-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTCELLPROFILER", "deprecation-2.1.0,PyWavelets-1.4.1,centrosome-1.2.1,cached-property-1.5.2,prokaryote-2.4.4,python-javabridge-4.0.3,python-bioformats-4.0.6,pyzmq-24.0.1,cellprofiler-core-4.2.4,pydantic-1.10.2,inflect-6.0.0,mahotas-1.4.13,mysqlclient-2.1.1,urllib3-1.26.12,sentry-sdk-1.9.9,CellProfiler-4.2.4")
