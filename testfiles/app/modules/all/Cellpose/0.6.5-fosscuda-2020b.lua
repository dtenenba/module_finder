help([==[

Description
===========
Cellpose is an anatomical segmentation algorithm written in Python 3 by Carsen 
Stringer and Marius Pachitariu.


More information
================
 - Homepage: http://cellpose.org/


Included extensions
===================
cachetools-4.2.2, Cellpose-0.6.5, google-api-core-1.26.3, google-auth-1.30.0,
google-cloud-core-1.6.0, google-cloud-storage-1.38.0, google-crc32c-1.1.2,
google-resumable-media-1.2.0, googleapis-common-protos-1.53.0, graphviz-0.8.4,
mxnet-1.8.0.post0, natsort-7.1.1, opencv-python-headless-4.5.2.52,
pyasn1-modules-0.2.8, PyQt5-5.13.0, PyQt5.sip-12.9.0, pyqtgraph-0.12.1,
rsa-4.7.2, tifffile-2021.4.8, tqdm-4.60.0
]==])

whatis([==[Description: Cellpose is an anatomical segmentation algorithm written in Python 3 by Carsen 
Stringer and Marius Pachitariu.]==])
whatis([==[Homepage: http://cellpose.org/]==])
whatis([==[URL: http://cellpose.org/]==])
whatis([==[Extensions: cachetools-4.2.2, Cellpose-0.6.5, google-api-core-1.26.3, google-auth-1.30.0, google-cloud-core-1.6.0, google-cloud-storage-1.38.0, google-crc32c-1.1.2, google-resumable-media-1.2.0, googleapis-common-protos-1.53.0, graphviz-0.8.4, mxnet-1.8.0.post0, natsort-7.1.1, opencv-python-headless-4.5.2.52, pyasn1-modules-0.2.8, PyQt5-5.13.0, PyQt5.sip-12.9.0, pyqtgraph-0.12.1, rsa-4.7.2, tifffile-2021.4.8, tqdm-4.60.0]==])

local root = "/app/software/Cellpose/0.6.5-fosscuda-2020b"

conflict("Cellpose")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-fosscuda-2020b") ) then
    load("SciPy-bundle/2020.11-fosscuda-2020b")
end

if not ( isloaded("matplotlib/3.3.3-fosscuda-2020b") ) then
    load("matplotlib/3.3.3-fosscuda-2020b")
end

if not ( isloaded("numba/0.53.1-fosscuda-2020b") ) then
    load("numba/0.53.1-fosscuda-2020b")
end

if not ( isloaded("PyTorch/1.7.1-fosscuda-2020b") ) then
    load("PyTorch/1.7.1-fosscuda-2020b")
end

if not ( isloaded("Qt5/5.14.2-GCCcore-10.2.0") ) then
    load("Qt5/5.14.2-GCCcore-10.2.0")
end

if not ( isloaded("Graphviz/2.47.0-GCCcore-10.2.0-Java-11") ) then
    load("Graphviz/2.47.0-GCCcore-10.2.0-Java-11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCELLPOSE", root)
setenv("EBVERSIONCELLPOSE", "0.6.5")
setenv("EBDEVELCELLPOSE", pathJoin(root, "logs/Cellpose-0.6.5-fosscuda-2020b-easybuild-devel"))

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "$EBROOTNUMBA/lib/python3.8/site-packages/llvmlite/binding"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTCELLPOSE", "PyQt5-5.13.0,PyQt5.sip-12.9.0,cachetools-4.2.2,pyasn1-modules-0.2.8,rsa-4.7.2,google-auth-1.30.0,googleapis-common-protos-1.53.0,google-api-core-1.26.3,google-cloud-core-1.6.0,google-crc32c-1.1.2,google-resumable-media-1.2.0,google-cloud-storage-1.38.0,graphviz-0.8.4,opencv-python-headless-4.5.2.52,mxnet-1.8.0.post0,tifffile-2021.4.8,natsort-7.1.1,pyqtgraph-0.12.1,tqdm-4.60.0,Cellpose-0.6.5")
