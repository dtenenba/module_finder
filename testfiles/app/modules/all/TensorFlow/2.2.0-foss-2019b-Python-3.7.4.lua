help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-0.9.0, astunparse-1.6.3, cachetools-4.1.0, gast-0.3.3, google-
auth-1.14.2, google-auth-oauthlib-0.4.1, google-pasta-0.2.0, grpcio-1.28.1,
Keras-Preprocessing-1.1.0, Markdown-3.2.1, oauthlib-3.1.0, opt-einsum-3.2.1,
pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.0, tensorboard-2.2.1,
tensorboard-plugin-wit-1.6.0.post3, TensorFlow-2.2.0, tensorflow-
estimator-2.2.0, termcolor-1.1.0, Werkzeug-1.0.1, wrapt-1.12.1
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-0.9.0, astunparse-1.6.3, cachetools-4.1.0, gast-0.3.3, google-auth-1.14.2, google-auth-oauthlib-0.4.1, google-pasta-0.2.0, grpcio-1.28.1, Keras-Preprocessing-1.1.0, Markdown-3.2.1, oauthlib-3.1.0, opt-einsum-3.2.1, pyasn1-modules-0.2.8, requests-oauthlib-1.3.0, rsa-4.0, tensorboard-2.2.1, tensorboard-plugin-wit-1.6.0.post3, TensorFlow-2.2.0, tensorflow-estimator-2.2.0, termcolor-1.1.0, Werkzeug-1.0.1, wrapt-1.12.1]==])

local root = "/app/software/TensorFlow/2.2.0-foss-2019b-Python-3.7.4"

conflict("TensorFlow")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

if not ( isloaded("double-conversion/3.1.4-GCCcore-8.3.0") ) then
    load("double-conversion/3.1.4-GCCcore-8.3.0")
end

if not ( isloaded("flatbuffers/1.12.0-GCCcore-8.3.0") ) then
    load("flatbuffers/1.12.0-GCCcore-8.3.0")
end

if not ( isloaded("giflib/5.2.1-GCCcore-8.3.0") ) then
    load("giflib/5.2.1-GCCcore-8.3.0")
end

if not ( isloaded("hwloc/1.11.12-GCCcore-8.3.0") ) then
    load("hwloc/1.11.12-GCCcore-8.3.0")
end

if not ( isloaded("ICU/64.2-GCCcore-8.3.0") ) then
    load("ICU/64.2-GCCcore-8.3.0")
end

if not ( isloaded("JsonCpp/1.9.3-GCCcore-8.3.0") ) then
    load("JsonCpp/1.9.3-GCCcore-8.3.0")
end

if not ( isloaded("libjpeg-turbo/2.0.3-GCCcore-8.3.0") ) then
    load("libjpeg-turbo/2.0.3-GCCcore-8.3.0")
end

if not ( isloaded("LMDB/0.9.24-GCCcore-8.3.0") ) then
    load("LMDB/0.9.24-GCCcore-8.3.0")
end

if not ( isloaded("NASM/2.14.02-GCCcore-8.3.0") ) then
    load("NASM/2.14.02-GCCcore-8.3.0")
end

if not ( isloaded("nsync/1.24.0-GCCcore-8.3.0") ) then
    load("nsync/1.24.0-GCCcore-8.3.0")
end

if not ( isloaded("SQLite/3.29.0-GCCcore-8.3.0") ) then
    load("SQLite/3.29.0-GCCcore-8.3.0")
end

if not ( isloaded("PCRE/8.43-GCCcore-8.3.0") ) then
    load("PCRE/8.43-GCCcore-8.3.0")
end

if not ( isloaded("protobuf-python/3.10.0-foss-2019b-Python-3.7.4") ) then
    load("protobuf-python/3.10.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("libpng/1.6.37-GCCcore-8.3.0") ) then
    load("libpng/1.6.37-GCCcore-8.3.0")
end

if not ( isloaded("snappy/1.1.7-GCCcore-8.3.0") ) then
    load("snappy/1.1.7-GCCcore-8.3.0")
end

if not ( isloaded("SWIG/4.0.1-GCCcore-8.3.0") ) then
    load("SWIG/4.0.1-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("scipy/1.4.1-foss-2019b-Python-3.7.4") ) then
    load("scipy/1.4.1-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.2.0")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "logs/TensorFlow-2.2.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTTENSORFLOW", "Markdown-3.2.1,pyasn1-modules-0.2.8,rsa-4.0,cachetools-4.1.0,google-auth-1.14.2,oauthlib-3.1.0,requests-oauthlib-1.3.0,google-auth-oauthlib-0.4.1,Werkzeug-1.0.1,absl-py-0.9.0,astunparse-1.6.3,grpcio-1.28.1,tensorboard-plugin-wit-1.6.0.post3,tensorboard-2.2.1,google-pasta-0.2.0,termcolor-1.1.0,tensorflow-estimator-2.2.0,gast-0.3.3,opt-einsum-3.2.1,wrapt-1.12.1,Keras-Preprocessing-1.1.0,TensorFlow-2.2.0")
