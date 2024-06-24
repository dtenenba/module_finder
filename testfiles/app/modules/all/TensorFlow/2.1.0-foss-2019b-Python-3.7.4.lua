help([==[

Description
===========
An open-source software library for Machine Intelligence


More information
================
 - Homepage: https://www.tensorflow.org/


Included extensions
===================
absl-py-0.8.1, astor-0.8.0, cachetools-3.1.1, gast-0.2.2, google-auth-1.7.1,
google-auth-oauthlib-0.4.1, google-pasta-0.1.8, grpcio-1.25.0, Keras-
Applications-1.0.8, Keras-Preprocessing-1.1.0, Markdown-3.1.1, oauthlib-3.1.0,
opt-einsum-3.1.0, protobuf-3.10.0, pyasn1-modules-0.2.7, requests-
oauthlib-1.3.0, rsa-4.0, scipy-1.4.1, tensorboard-2.1.0, TensorFlow-2.1.0,
tensorflow-estimator-2.1.0, termcolor-1.1.0, Werkzeug-0.16.0, wrapt-1.11.2
]==])

whatis([==[Description: An open-source software library for Machine Intelligence]==])
whatis([==[Homepage: https://www.tensorflow.org/]==])
whatis([==[URL: https://www.tensorflow.org/]==])
whatis([==[Extensions: absl-py-0.8.1, astor-0.8.0, cachetools-3.1.1, gast-0.2.2, google-auth-1.7.1, google-auth-oauthlib-0.4.1, google-pasta-0.1.8, grpcio-1.25.0, Keras-Applications-1.0.8, Keras-Preprocessing-1.1.0, Markdown-3.1.1, oauthlib-3.1.0, opt-einsum-3.1.0, protobuf-3.10.0, pyasn1-modules-0.2.7, requests-oauthlib-1.3.0, rsa-4.0, scipy-1.4.1, tensorboard-2.1.0, TensorFlow-2.1.0, tensorflow-estimator-2.1.0, termcolor-1.1.0, Werkzeug-0.16.0, wrapt-1.11.2]==])

local root = "/app/software/TensorFlow/2.1.0-foss-2019b-Python-3.7.4"

conflict("TensorFlow")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTENSORFLOW", root)
setenv("EBVERSIONTENSORFLOW", "2.1.0")
setenv("EBDEVELTENSORFLOW", pathJoin(root, "logs/TensorFlow-2.1.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTTENSORFLOW", "scipy-1.4.1,Markdown-3.1.1,pyasn1-modules-0.2.7,rsa-4.0,cachetools-3.1.1,google-auth-1.7.1,oauthlib-3.1.0,requests-oauthlib-1.3.0,google-auth-oauthlib-0.4.1,Werkzeug-0.16.0,protobuf-3.10.0,absl-py-0.8.1,grpcio-1.25.0,tensorboard-2.1.0,google-pasta-0.1.8,termcolor-1.1.0,tensorflow-estimator-2.1.0,astor-0.8.0,Keras-Applications-1.0.8,gast-0.2.2,opt-einsum-3.1.0,wrapt-1.11.2,Keras-Preprocessing-1.1.0,TensorFlow-2.1.0")
