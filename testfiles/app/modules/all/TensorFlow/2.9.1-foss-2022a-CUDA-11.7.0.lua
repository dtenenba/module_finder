help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-1.2.0, astor-0.8.1, astunparse-1.6.3, beniget-0.3.0, cachetools-5.2.0,
gast-0.4.0, google-auth-2.10.0, google-auth-oauthlib-0.4.6, google-
pasta-0.2.0, grpcio-1.47.0, gviz-api-1.10.0, keras-2.9.0, Keras-
Preprocessing-1.1.2, Markdown-3.4.1, oauthlib-3.2.0, opt-einsum-3.3.0,
portpicker-1.5.2, pyasn1-modules-0.2.8, pythran-0.9.11, requests-
oauthlib-1.3.1, rsa-4.9, tblib-1.7.0, tensorboard-2.9.1, tensorboard-data-
server-0.6.1, tensorboard-plugin-profile-2.8.0, tensorboard-plugin-wit-1.8.1,
TensorFlow-2.9.1, tensorflow-estimator-2.9.0, termcolor-1.1.0, Werkzeug-2.2.2,
wrapt-1.14.1
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-1.2.0, astor-0.8.1, astunparse-1.6.3, beniget-0.3.0, cachetools-5.2.0, gast-0.4.0, google-auth-2.10.0, google-auth-oauthlib-0.4.6, google-pasta-0.2.0, grpcio-1.47.0, gviz-api-1.10.0, keras-2.9.0, Keras-Preprocessing-1.1.2, Markdown-3.4.1, oauthlib-3.2.0, opt-einsum-3.3.0, portpicker-1.5.2, pyasn1-modules-0.2.8, pythran-0.9.11, requests-oauthlib-1.3.1, rsa-4.9, tblib-1.7.0, tensorboard-2.9.1, tensorboard-data-server-0.6.1, tensorboard-plugin-profile-2.8.0, tensorboard-plugin-wit-1.8.1, TensorFlow-2.9.1, tensorflow-estimator-2.9.0, termcolor-1.1.0, Werkzeug-2.2.2, wrapt-1.14.1]==])

local root = "/app/software/TensorFlow/2.9.1-foss-2022a-CUDA-11.7.0"

conflict("TensorFlow")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("cuDNN/8.4.1.50-CUDA-11.7.0") ) then
    load("cuDNN/8.4.1.50-CUDA-11.7.0")
end

if not ( isloaded("NCCL/2.12.12-GCCcore-11.3.0-CUDA-11.7.0") ) then
    load("NCCL/2.12.12-GCCcore-11.3.0-CUDA-11.7.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("h5py/3.7.0-foss-2022a") ) then
    load("h5py/3.7.0-foss-2022a")
end

if not ( isloaded("cURL/7.83.0-GCCcore-11.3.0") ) then
    load("cURL/7.83.0-GCCcore-11.3.0")
end

if not ( isloaded("dill/0.3.6-GCCcore-11.3.0") ) then
    load("dill/0.3.6-GCCcore-11.3.0")
end

if not ( isloaded("double-conversion/3.2.0-GCCcore-11.3.0") ) then
    load("double-conversion/3.2.0-GCCcore-11.3.0")
end

if not ( isloaded("flatbuffers/2.0.7-GCCcore-11.3.0") ) then
    load("flatbuffers/2.0.7-GCCcore-11.3.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-11.3.0") ) then
    load("giflib/5.2.1-GCCcore-11.3.0")
end

if not ( isloaded("hwloc/2.7.1-GCCcore-11.3.0") ) then
    load("hwloc/2.7.1-GCCcore-11.3.0")
end

if not ( isloaded("ICU/71.1-GCCcore-11.3.0") ) then
    load("ICU/71.1-GCCcore-11.3.0")
end

if not ( isloaded("JsonCpp/1.9.5-GCCcore-11.3.0") ) then
    load("JsonCpp/1.9.5-GCCcore-11.3.0")
end

if not ( isloaded("libjpeg-turbo/2.1.3-GCCcore-11.3.0") ) then
    load("libjpeg-turbo/2.1.3-GCCcore-11.3.0")
end

if not ( isloaded("LMDB/0.9.29-GCCcore-11.3.0") ) then
    load("LMDB/0.9.29-GCCcore-11.3.0")
end

if not ( isloaded("NASM/2.15.05-GCCcore-11.3.0") ) then
    load("NASM/2.15.05-GCCcore-11.3.0")
end

if not ( isloaded("nsync/1.25.0-GCCcore-11.3.0") ) then
    load("nsync/1.25.0-GCCcore-11.3.0")
end

if not ( isloaded("SQLite/3.38.3-GCCcore-11.3.0") ) then
    load("SQLite/3.38.3-GCCcore-11.3.0")
end

if not ( isloaded("protobuf-python/3.19.4-GCCcore-11.3.0") ) then
    load("protobuf-python/3.19.4-GCCcore-11.3.0")
end

if not ( isloaded("flatbuffers-python/2.0-GCCcore-11.3.0") ) then
    load("flatbuffers-python/2.0-GCCcore-11.3.0")
end

if not ( isloaded("libpng/1.6.37-GCCcore-11.3.0") ) then
    load("libpng/1.6.37-GCCcore-11.3.0")
end

if not ( isloaded("snappy/1.1.9-GCCcore-11.3.0") ) then
    load("snappy/1.1.9-GCCcore-11.3.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-11.3.0") ) then
    load("zlib/1.2.12-GCCcore-11.3.0")
end

if not ( isloaded("networkx/2.8.4-foss-2022a") ) then
    load("networkx/2.8.4-foss-2022a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.9.1")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "logs/TensorFlow-2.9.1-foss-2022a-CUDA-11.7.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTTENSORFLOW", "wrapt-1.14.1,termcolor-1.1.0,tensorflow-estimator-2.9.0,Werkzeug-2.2.2,tensorboard-plugin-wit-1.8.1,tensorboard-data-server-0.6.1,Markdown-3.4.1,grpcio-1.47.0,oauthlib-3.2.0,requests-oauthlib-1.3.1,rsa-4.9,pyasn1-modules-0.2.8,cachetools-5.2.0,google-auth-2.10.0,google-auth-oauthlib-0.4.6,absl-py-1.2.0,tensorboard-2.9.1,opt-einsum-3.3.0,Keras-Preprocessing-1.1.2,keras-2.9.0,google-pasta-0.2.0,astunparse-1.6.3,gast-0.4.0,beniget-0.3.0,pythran-0.9.11,portpicker-1.5.2,tblib-1.7.0,astor-0.8.1,gviz-api-1.10.0,tensorboard-plugin-profile-2.8.0,TensorFlow-2.9.1")
