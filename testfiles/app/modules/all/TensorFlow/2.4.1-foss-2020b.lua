help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-0.10.0, astunparse-1.6.3, cachetools-4.2.0, dill-0.3.3, gast-0.3.3,
google-auth-1.24.0, google-auth-oauthlib-0.4.2, google-pasta-0.2.0,
grpcio-1.32.0, gviz-api-1.9.0, h5py-2.10.0, Keras-Preprocessing-1.1.2,
Markdown-3.3.3, oauthlib-3.1.0, opt-einsum-3.3.0, portpicker-1.3.1,
pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.7, tblib-1.7.0,
tensorboard-2.4.1, tensorboard-plugin-profile-2.4.0, tensorboard-plugin-
wit-1.8.0, TensorFlow-2.4.1, tensorflow-estimator-2.4.0, termcolor-1.1.0,
Werkzeug-1.0.1, wrapt-1.12.1
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-0.10.0, astunparse-1.6.3, cachetools-4.2.0, dill-0.3.3, gast-0.3.3, google-auth-1.24.0, google-auth-oauthlib-0.4.2, google-pasta-0.2.0, grpcio-1.32.0, gviz-api-1.9.0, h5py-2.10.0, Keras-Preprocessing-1.1.2, Markdown-3.3.3, oauthlib-3.1.0, opt-einsum-3.3.0, portpicker-1.3.1, pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.7, tblib-1.7.0, tensorboard-2.4.1, tensorboard-plugin-profile-2.4.0, tensorboard-plugin-wit-1.8.0, TensorFlow-2.4.1, tensorflow-estimator-2.4.0, termcolor-1.1.0, Werkzeug-1.0.1, wrapt-1.12.1]==])

local root = "/app/software/TensorFlow/2.4.1-foss-2020b"

conflict("TensorFlow")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("HDF5/1.10.7-gompi-2020b") ) then
    load("HDF5/1.10.7-gompi-2020b")
end

if not ( isloaded("cURL/7.72.0-GCCcore-10.2.0") ) then
    load("cURL/7.72.0-GCCcore-10.2.0")
end

if not ( isloaded("double-conversion/3.1.5-GCCcore-10.2.0") ) then
    load("double-conversion/3.1.5-GCCcore-10.2.0")
end

if not ( isloaded("flatbuffers/1.12.0-GCCcore-10.2.0") ) then
    load("flatbuffers/1.12.0-GCCcore-10.2.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-10.2.0") ) then
    load("giflib/5.2.1-GCCcore-10.2.0")
end

if not ( isloaded("hwloc/2.2.0-GCCcore-10.2.0") ) then
    load("hwloc/2.2.0-GCCcore-10.2.0")
end

if not ( isloaded("ICU/67.1-GCCcore-10.2.0") ) then
    load("ICU/67.1-GCCcore-10.2.0")
end

if not ( isloaded("JsonCpp/1.9.4-GCCcore-10.2.0") ) then
    load("JsonCpp/1.9.4-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("LMDB/0.9.24-GCCcore-10.2.0") ) then
    load("LMDB/0.9.24-GCCcore-10.2.0")
end

if not ( isloaded("NASM/2.15.05-GCCcore-10.2.0") ) then
    load("NASM/2.15.05-GCCcore-10.2.0")
end

if not ( isloaded("nsync/1.24.0-GCCcore-10.2.0") ) then
    load("nsync/1.24.0-GCCcore-10.2.0")
end

if not ( isloaded("SQLite/3.33.0-GCCcore-10.2.0") ) then
    load("SQLite/3.33.0-GCCcore-10.2.0")
end

if not ( isloaded("PCRE/8.44-GCCcore-10.2.0") ) then
    load("PCRE/8.44-GCCcore-10.2.0")
end

if not ( isloaded("protobuf-python/3.14.0-GCCcore-10.2.0") ) then
    load("protobuf-python/3.14.0-GCCcore-10.2.0")
end

if not ( isloaded("flatbuffers-python/1.12-GCCcore-10.2.0") ) then
    load("flatbuffers-python/1.12-GCCcore-10.2.0")
end

if not ( isloaded("typing-extensions/3.7.4.3-GCCcore-10.2.0") ) then
    load("typing-extensions/3.7.4.3-GCCcore-10.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-10.2.0") ) then
    load("libpng/1.6.37-GCCcore-10.2.0")
end

if not ( isloaded("snappy/1.1.8-GCCcore-10.2.0") ) then
    load("snappy/1.1.8-GCCcore-10.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.2.0") ) then
    load("zlib/1.2.11-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.4.1")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "logs/TensorFlow-2.4.1-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTTENSORFLOW", "h5py-2.10.0,Markdown-3.3.3,pyasn1-modules-0.2.8,rsa-4.7,cachetools-4.2.0,google-auth-1.24.0,oauthlib-3.1.0,requests-oauthlib-1.3.0,google-auth-oauthlib-0.4.2,Werkzeug-1.0.1,absl-py-0.10.0,astunparse-1.6.3,grpcio-1.32.0,gviz-api-1.9.0,tensorboard-2.4.1,tensorboard-plugin-wit-1.8.0,tensorboard-plugin-profile-2.4.0,google-pasta-0.2.0,termcolor-1.1.0,tensorflow-estimator-2.4.0,gast-0.3.3,opt-einsum-3.3.0,wrapt-1.12.1,Keras-Preprocessing-1.1.2,dill-0.3.3,tblib-1.7.0,portpicker-1.3.1,TensorFlow-2.4.1")
