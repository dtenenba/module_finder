help([==[

Description
===========
Keras is a minimalist, highly modular neural networks library, written in Python and
capable of running on top of either TensorFlow or Theano.


More information
================
 - Homepage: https://keras.io/
]==])

whatis([==[Description: Keras is a minimalist, highly modular neural networks library, written in Python and
capable of running on top of either TensorFlow or Theano.]==])
whatis([==[Homepage: https://keras.io/]==])
whatis([==[URL: https://keras.io/]==])

local root = "/app/software/Keras/2.3.1-foss-2019b-Python-3.7.4"

conflict("Keras")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("Theano/1.0.4-foss-2019b-Python-3.7.4") ) then
    load("Theano/1.0.4-foss-2019b-Python-3.7.4")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("TensorFlow/2.1.0-foss-2019b-Python-3.7.4") ) then
    load("TensorFlow/2.1.0-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTKERAS", root)
setenv("EBVERSIONKERAS", "2.3.1")
setenv("EBDEVELKERAS", pathJoin(root, "logs/Keras-2.3.1-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
