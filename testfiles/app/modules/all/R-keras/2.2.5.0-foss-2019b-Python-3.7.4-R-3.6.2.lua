help([==[

Description
===========
Interface to 'Keras' <https://keras.io>, a high-level neural networks 'API'.


More information
================
 - Homepage: https://cran.r-project.org/web/packages/keras


Included extensions
===================
config-0.3, keras-2.2.5.0, tensorflow-2.0.0, tfruns-1.4
]==])

whatis([==[Description:  Interface to 'Keras' <https://keras.io>, a high-level neural networks 'API'. ]==])
whatis([==[Homepage: https://cran.r-project.org/web/packages/keras]==])
whatis([==[URL: https://cran.r-project.org/web/packages/keras]==])
whatis([==[Extensions: config-0.3, keras-2.2.5.0, tensorflow-2.0.0, tfruns-1.4]==])

local root = "/app/software/R-keras/2.2.5.0-foss-2019b-Python-3.7.4-R-3.6.2"

conflict("R-keras")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("R/3.6.2-foss-2019b") ) then
    load("R/3.6.2-foss-2019b")
end

if not ( isloaded("Keras/2.3.1-foss-2019b-Python-3.7.4") ) then
    load("Keras/2.3.1-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRMINKERAS", root)
setenv("EBVERSIONRMINKERAS", "2.2.5.0")
setenv("EBDEVELRMINKERAS", pathJoin(root, "logs/R-keras-2.2.5.0-foss-2019b-Python-3.7.4-R-3.6.2-easybuild-devel"))

prepend_path("R_LIBS", root)
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTRMINKERAS", "config-0.3,tfruns-1.4,tensorflow-2.0.0,keras-2.2.5.0")
