help([==[

Description
===========
CellProfiler is a free open-source software designed to enable biologists without training in computer vision or programming to quantitatively measure phenotypes from thousands of images automatically.


More information
================
 - Homepage: http://cellprofiler.org/


Included extensions
===================
boto3-1.17.24, botocore-1.20.24, cached-property-1.5.2, CellProfiler-4.1.3,
cellprofiler-core-4.1.3, centrosome-1.2.0, Cycler-0.10.0, deprecation-2.1.0,
docutils-0.15.2, h5py-2.10.0, imageio-2.9.0, inflect-5.3.0, jmespath-0.10.0,
kiwisolver-1.3.0, mahotas-1.4.11, matplotlib-3.1.3, mpi4py-3.0.3,
mysqlclient-1.4.6, networkx-2.5, numpy-1.20.1, Pillow-8.1.2, prokaryote-2.4.2,
python-bioformats-4.0.4, python-javabridge-4.0.3, PyWavelets-1.1.1,
pyzmq-18.0.1, s3transfer-0.3.4, scikit-image-0.18.1, scipy-1.5.4, sentry-
sdk-0.18.0, tifffile-2021.3.5
]==])

whatis([==[Description: CellProfiler is a free open-source software designed to enable biologists without training in computer vision or programming to quantitatively measure phenotypes from thousands of images automatically.]==])
whatis([==[Homepage: http://cellprofiler.org/]==])
whatis([==[URL: http://cellprofiler.org/]==])
whatis([==[Extensions: boto3-1.17.24, botocore-1.20.24, cached-property-1.5.2, CellProfiler-4.1.3, cellprofiler-core-4.1.3, centrosome-1.2.0, Cycler-0.10.0, deprecation-2.1.0, docutils-0.15.2, h5py-2.10.0, imageio-2.9.0, inflect-5.3.0, jmespath-0.10.0, kiwisolver-1.3.0, mahotas-1.4.11, matplotlib-3.1.3, mpi4py-3.0.3, mysqlclient-1.4.6, networkx-2.5, numpy-1.20.1, Pillow-8.1.2, prokaryote-2.4.2, python-bioformats-4.0.4, python-javabridge-4.0.3, PyWavelets-1.1.1, pyzmq-18.0.1, s3transfer-0.3.4, scikit-image-0.18.1, scipy-1.5.4, sentry-sdk-0.18.0, tifffile-2021.3.5]==])

local root = "/app/software/CellProfiler/4.1.3-foss-2020b"

conflict("CellProfiler")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("pybind11/2.6.0-GCCcore-10.2.0") ) then
    load("pybind11/2.6.0-GCCcore-10.2.0")
end

if not ( isloaded("pkgconfig/1.5.1-GCCcore-10.2.0-python") ) then
    load("pkgconfig/1.5.1-GCCcore-10.2.0-python")
end

if not ( isloaded("scikit-learn/0.23.2-foss-2020b") ) then
    load("scikit-learn/0.23.2-foss-2020b")
end

if not ( isloaded("wxPython/4.1.0-GCC-10.2.0") ) then
    load("wxPython/4.1.0-GCC-10.2.0")
end

if not ( isloaded("HDF5/1.10.7-gompi-2020b") ) then
    load("HDF5/1.10.7-gompi-2020b")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.2.0") ) then
    load("libpng/1.6.37-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("LibTIFF/4.1.0-GCCcore-10.2.0") ) then
    load("LibTIFF/4.1.0-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

if not ( isloaded("freetype/2.10.3-GCCcore-10.2.0") ) then
    load("freetype/2.10.3-GCCcore-10.2.0")
end

if not ( isloaded("Tkinter/3.8.6-GCCcore-10.2.0") ) then
    load("Tkinter/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("MariaDB/10.5.8-GCC-10.2.0") ) then
    load("MariaDB/10.5.8-GCC-10.2.0")
end

if not ( isloaded("ZeroMQ/4.3.3-GCCcore-10.2.0") ) then
    load("ZeroMQ/4.3.3-GCCcore-10.2.0")
end

if not ( isloaded("GTK+/3.24.23-GCCcore-10.2.0") ) then
    load("GTK+/3.24.23-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCELLPROFILER", root)
setenv("EBVERSIONCELLPROFILER", "4.1.3")
setenv("EBDEVELCELLPROFILER", pathJoin(root, "logs/CellProfiler-4.1.3-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
prepend_path("CPATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTCELLPROFILER", "numpy-1.20.1,scipy-1.5.4,docutils-0.15.2,Cycler-0.10.0,kiwisolver-1.3.0,matplotlib-3.1.3,mpi4py-3.0.3,h5py-2.10.0,jmespath-0.10.0,s3transfer-0.3.4,botocore-1.20.24,boto3-1.17.24,deprecation-2.1.0,Pillow-8.1.2,networkx-2.5,imageio-2.9.0,tifffile-2021.3.5,PyWavelets-1.1.1,scikit-image-0.18.1,centrosome-1.2.0,cached-property-1.5.2,prokaryote-2.4.2,python-javabridge-4.0.3,python-bioformats-4.0.4,pyzmq-18.0.1,cellprofiler-core-4.1.3,inflect-5.3.0,mahotas-1.4.11,mysqlclient-1.4.6,sentry-sdk-0.18.0,CellProfiler-4.1.3")
