help([==[

Description
===========
Keras is a deep learning API written in Python, running on top of the machine learning platform TensorFlow.


More information
================
 - Homepage: https://keras.io/


Included extensions
===================
Keras-2.4.3, Keras_Applications-1.0.8, Keras_Preprocessing-1.1.2
]==])

whatis([==[Description: 
Keras is a deep learning API written in Python, running on top of the machine learning platform TensorFlow.
]==])
whatis([==[Homepage: https://keras.io/]==])
whatis([==[URL: https://keras.io/]==])
whatis([==[Extensions: Keras-2.4.3, Keras_Applications-1.0.8, Keras_Preprocessing-1.1.2]==])

local root = "/app/software/Keras/2.4.3-foss-2020b"

conflict("Keras")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Theano/1.1.2-foss-2020b-PyMC") ) then
    load("Theano/1.1.2-foss-2020b-PyMC")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("h5py/3.1.0-foss-2020b") ) then
    load("h5py/3.1.0-foss-2020b")
end

if not ( isloaded("TensorFlow/2.4.1-foss-2020b") ) then
    load("TensorFlow/2.4.1-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTKERAS", root)
setenv("EBVERSIONKERAS", "2.4.3")
setenv("EBDEVELKERAS", pathJoin(root, "logs/Keras-2.4.3-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTKERAS", "Keras_Applications-1.0.8,Keras_Preprocessing-1.1.2,Keras-2.4.3")
