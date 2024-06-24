help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-1.4.0, astor-0.8.1, astunparse-1.6.3, cachetools-5.3.1, google-
auth-2.22.0, google-auth-oauthlib-1.0.0, google-pasta-0.2.0, grpcio-1.56.2,
gviz-api-1.10.0, keras-2.13.1, Markdown-3.4.4, oauthlib-3.2.2, opt-
einsum-3.3.0, portpicker-1.5.2, pyasn1-modules-0.3.0, requests-oauthlib-1.3.1,
rsa-4.9, tblib-2.0.0, tensorboard-2.13.0, tensorboard-data-server-0.7.1,
tensorboard-plugin-profile-2.13.1, tensorboard-plugin-wit-1.8.1,
TensorFlow-2.13.0, tensorflow-estimator-2.13.0, termcolor-2.3.0,
Werkzeug-2.3.6, wrapt-1.15.0
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-1.4.0, astor-0.8.1, astunparse-1.6.3, cachetools-5.3.1, google-auth-2.22.0, google-auth-oauthlib-1.0.0, google-pasta-0.2.0, grpcio-1.56.2, gviz-api-1.10.0, keras-2.13.1, Markdown-3.4.4, oauthlib-3.2.2, opt-einsum-3.3.0, portpicker-1.5.2, pyasn1-modules-0.3.0, requests-oauthlib-1.3.1, rsa-4.9, tblib-2.0.0, tensorboard-2.13.0, tensorboard-data-server-0.7.1, tensorboard-plugin-profile-2.13.1, tensorboard-plugin-wit-1.8.1, TensorFlow-2.13.0, tensorflow-estimator-2.13.0, termcolor-2.3.0, Werkzeug-2.3.6, wrapt-1.15.0]==])

local root = "/app/software/TensorFlow/2.13.0-foss-2022b"

conflict("TensorFlow")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("h5py/3.8.0-foss-2022b") ) then
    load("h5py/3.8.0-foss-2022b")
end

if not ( isloaded("cURL/7.86.0-GCCcore-12.2.0") ) then
    load("cURL/7.86.0-GCCcore-12.2.0")
end

if not ( isloaded("dill/0.3.7-GCCcore-12.2.0") ) then
    load("dill/0.3.7-GCCcore-12.2.0")
end

if not ( isloaded("double-conversion/3.2.1-GCCcore-12.2.0") ) then
    load("double-conversion/3.2.1-GCCcore-12.2.0")
end

if not ( isloaded("flatbuffers/23.1.4-GCCcore-12.2.0") ) then
    load("flatbuffers/23.1.4-GCCcore-12.2.0")
end

if not ( isloaded("flatbuffers-python/23.1.4-GCCcore-12.2.0") ) then
    load("flatbuffers-python/23.1.4-GCCcore-12.2.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-12.2.0") ) then
    load("giflib/5.2.1-GCCcore-12.2.0")
end

if not ( isloaded("hwloc/2.8.0-GCCcore-12.2.0") ) then
    load("hwloc/2.8.0-GCCcore-12.2.0")
end

if not ( isloaded("ICU/72.1-GCCcore-12.2.0") ) then
    load("ICU/72.1-GCCcore-12.2.0")
end

if not ( isloaded("JsonCpp/1.9.5-GCCcore-12.2.0") ) then
    load("JsonCpp/1.9.5-GCCcore-12.2.0")
end

if not ( isloaded("libjpeg-turbo/2.1.4-GCCcore-12.2.0") ) then
    load("libjpeg-turbo/2.1.4-GCCcore-12.2.0")
end

if not ( isloaded("NASM/2.15.05-GCCcore-12.2.0") ) then
    load("NASM/2.15.05-GCCcore-12.2.0")
end

if not ( isloaded("nsync/1.26.0-GCCcore-12.2.0") ) then
    load("nsync/1.26.0-GCCcore-12.2.0")
end

if not ( isloaded("SQLite/3.39.4-GCCcore-12.2.0") ) then
    load("SQLite/3.39.4-GCCcore-12.2.0")
end

if not ( isloaded("patchelf/0.17.2-GCCcore-12.2.0") ) then
    load("patchelf/0.17.2-GCCcore-12.2.0")
end

if not ( isloaded("protobuf-python/4.23.0-GCCcore-12.2.0") ) then
    load("protobuf-python/4.23.0-GCCcore-12.2.0")
end

if not ( isloaded("libpng/1.6.38-GCCcore-12.2.0") ) then
    load("libpng/1.6.38-GCCcore-12.2.0")
end

if not ( isloaded("snappy/1.1.9-GCCcore-12.2.0") ) then
    load("snappy/1.1.9-GCCcore-12.2.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-12.2.0") ) then
    load("zlib/1.2.12-GCCcore-12.2.0")
end

if not ( isloaded("RE2/2023-03-01-GCCcore-12.2.0") ) then
    load("RE2/2023-03-01-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.13.0")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "logs/TensorFlow-2.13.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTTENSORFLOW", "wrapt-1.15.0,termcolor-2.3.0,tensorflow-estimator-2.13.0,Werkzeug-2.3.6,tensorboard-plugin-wit-1.8.1,tensorboard-data-server-0.7.1,Markdown-3.4.4,grpcio-1.56.2,oauthlib-3.2.2,requests-oauthlib-1.3.1,rsa-4.9,pyasn1-modules-0.3.0,cachetools-5.3.1,google-auth-2.22.0,google-auth-oauthlib-1.0.0,absl-py-1.4.0,tensorboard-2.13.0,opt-einsum-3.3.0,keras-2.13.1,google-pasta-0.2.0,astunparse-1.6.3,portpicker-1.5.2,tblib-2.0.0,astor-0.8.1,gviz-api-1.10.0,tensorboard-plugin-profile-2.13.1,TensorFlow-2.13.0")
