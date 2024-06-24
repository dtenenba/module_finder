help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-0.13.0, astor-0.8.1, astunparse-1.6.3, beniget-0.3.0,
cachetools-5.0.0, dill-0.3.4, gast-0.4.0, google-auth-2.6.0, google-auth-
oauthlib-0.4.6, google-pasta-0.2.0, grpcio-1.43.0, gviz-api-1.10.0,
keras-2.7.0, Keras_Preprocessing-1.1.2, Markdown-3.3.6, oauthlib-3.2.0,
opt_einsum-3.3.0, portpicker-1.5.0, pyasn1-modules-0.2.8, pythran-0.9.11,
requests-oauthlib-1.3.1, rsa-4.8, tblib-1.7.0, tensorboard-2.8.0,
tensorboard_data_server-0.6.1, tensorboard_plugin_profile-2.5.0,
tensorboard_plugin_wit-1.8.1, TensorFlow-2.7.1, tensorflow_estimator-2.7.0,
termcolor-1.1.0, Werkzeug-2.0.3, wrapt-1.13.3
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-0.13.0, astor-0.8.1, astunparse-1.6.3, beniget-0.3.0, cachetools-5.0.0, dill-0.3.4, gast-0.4.0, google-auth-2.6.0, google-auth-oauthlib-0.4.6, google-pasta-0.2.0, grpcio-1.43.0, gviz-api-1.10.0, keras-2.7.0, Keras_Preprocessing-1.1.2, Markdown-3.3.6, oauthlib-3.2.0, opt_einsum-3.3.0, portpicker-1.5.0, pyasn1-modules-0.2.8, pythran-0.9.11, requests-oauthlib-1.3.1, rsa-4.8, tblib-1.7.0, tensorboard-2.8.0, tensorboard_data_server-0.6.1, tensorboard_plugin_profile-2.5.0, tensorboard_plugin_wit-1.8.1, TensorFlow-2.7.1, tensorflow_estimator-2.7.0, termcolor-1.1.0, Werkzeug-2.0.3, wrapt-1.13.3]==])

local root = "/app/software/TensorFlow/2.7.1-foss-2021b-CUDA-11.4.1"

conflict("TensorFlow")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("cuDNN/8.2.2.26-CUDA-11.4.1") ) then
    load("cuDNN/8.2.2.26-CUDA-11.4.1")
end

if not ( isloaded("NCCL/2.10.3-GCCcore-11.2.0-CUDA-11.4.1") ) then
    load("NCCL/2.10.3-GCCcore-11.2.0-CUDA-11.4.1")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("h5py/3.6.0-foss-2021b") ) then
    load("h5py/3.6.0-foss-2021b")
end

if not ( isloaded("cURL/7.78.0-GCCcore-11.2.0") ) then
    load("cURL/7.78.0-GCCcore-11.2.0")
end

if not ( isloaded("double-conversion/3.1.5-GCCcore-11.2.0") ) then
    load("double-conversion/3.1.5-GCCcore-11.2.0")
end

if not ( isloaded("flatbuffers/2.0.0-GCCcore-11.2.0") ) then
    load("flatbuffers/2.0.0-GCCcore-11.2.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-11.2.0") ) then
    load("giflib/5.2.1-GCCcore-11.2.0")
end

if not ( isloaded("hwloc/2.5.0-GCCcore-11.2.0") ) then
    load("hwloc/2.5.0-GCCcore-11.2.0")
end

if not ( isloaded("ICU/69.1-GCCcore-11.2.0") ) then
    load("ICU/69.1-GCCcore-11.2.0")
end

if not ( isloaded("JsonCpp/1.9.4-GCCcore-11.2.0") ) then
    load("JsonCpp/1.9.4-GCCcore-11.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.6-GCCcore-11.2.0") ) then
    load("libjpeg-turbo/2.0.6-GCCcore-11.2.0")
end

if not ( isloaded("LMDB/0.9.29-GCCcore-11.2.0") ) then
    load("LMDB/0.9.29-GCCcore-11.2.0")
end

if not ( isloaded("NASM/2.15.05-GCCcore-11.2.0") ) then
    load("NASM/2.15.05-GCCcore-11.2.0")
end

if not ( isloaded("nsync/1.24.0-GCCcore-11.2.0") ) then
    load("nsync/1.24.0-GCCcore-11.2.0")
end

if not ( isloaded("SQLite/3.36-GCCcore-11.2.0") ) then
    load("SQLite/3.36-GCCcore-11.2.0")
end

if not ( isloaded("protobuf-python/3.17.3-GCCcore-11.2.0") ) then
    load("protobuf-python/3.17.3-GCCcore-11.2.0")
end

if not ( isloaded("flatbuffers-python/2.0-GCCcore-11.2.0") ) then
    load("flatbuffers-python/2.0-GCCcore-11.2.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.2.0") ) then
    load("libpng/1.6.37-GCCcore-11.2.0")
end

if not ( isloaded("snappy/1.1.9-GCCcore-11.2.0") ) then
    load("snappy/1.1.9-GCCcore-11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("networkx/2.6.3-foss-2021b") ) then
    load("networkx/2.6.3-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.7.1")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "logs/TensorFlow-2.7.1-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTTENSORFLOW", "beniget-0.3.0,pythran-0.9.11,wrapt-1.13.3,termcolor-1.1.0,tensorflow_estimator-2.7.0,Werkzeug-2.0.3,tensorboard_plugin_wit-1.8.1,tensorboard_data_server-0.6.1,Markdown-3.3.6,grpcio-1.43.0,oauthlib-3.2.0,requests-oauthlib-1.3.1,rsa-4.8,pyasn1-modules-0.2.8,cachetools-5.0.0,google-auth-2.6.0,google-auth-oauthlib-0.4.6,tensorboard-2.8.0,opt_einsum-3.3.0,Keras_Preprocessing-1.1.2,keras-2.7.0,google-pasta-0.2.0,gast-0.4.0,astunparse-1.6.3,gviz-api-1.10.0,tensorboard_plugin_profile-2.5.0,astor-0.8.1,dill-0.3.4,tblib-1.7.0,portpicker-1.5.0,absl-py-0.13.0,TensorFlow-2.7.1")
