help([==[

Description
===========
ml_dtypes is a stand-alone implementation of several NumPy dtype extensions used
in machine learning libraries, including:

bfloat16: an alternative to the standard float16 format
float8_*: several experimental 8-bit floating point representations including:
float8_e4m3b11fnuz
float8_e4m3fn
float8_e4m3fnuz
float8_e5m2
float8_e5m2fnuz


More information
================
 - Homepage: https://github.com/jax-ml/ml_dtypes


Included extensions
===================
etils-1.6.0, ml_dtypes-0.3.2, opt_einsum-3.3.0
]==])

whatis([==[Description: 
ml_dtypes is a stand-alone implementation of several NumPy dtype extensions used
in machine learning libraries, including:

bfloat16: an alternative to the standard float16 format
float8_*: several experimental 8-bit floating point representations including:
float8_e4m3b11fnuz
float8_e4m3fn
float8_e4m3fnuz
float8_e5m2
float8_e5m2fnuz
]==])
whatis([==[Homepage: https://github.com/jax-ml/ml_dtypes]==])
whatis([==[URL: https://github.com/jax-ml/ml_dtypes]==])
whatis([==[Extensions: etils-1.6.0, ml_dtypes-0.3.2, opt_einsum-3.3.0]==])

local root = "/app/software/ml_dtypes/0.3.2-foss-2023a"

conflict("ml_dtypes")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTML_DTYPES", root)
setenv("EBVERSIONML_DTYPES", "0.3.2")
setenv("EBDEVELML_DTYPES", pathJoin(root, "logs/ml_dtypes-0.3.2-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTML_DTYPES", "opt_einsum-3.3.0,etils-1.6.0,ml_dtypes-0.3.2")
