help([==[

Description
===========
XGBoost is an optimized distributed gradient boosting library designed to be highly efficient,
 flexible and portable.


More information
================
 - Homepage: https://github.com/dmlc/xgboost
]==])

whatis([==[Description: XGBoost is an optimized distributed gradient boosting library designed to be highly efficient,
 flexible and portable.]==])
whatis([==[Homepage: https://github.com/dmlc/xgboost]==])
whatis([==[URL: https://github.com/dmlc/xgboost]==])

local root = "/app/software/XGBoost/0.90-foss-2019b-Python-3.7.4"

conflict("XGBoost")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTXGBOOST", root)
setenv("EBVERSIONXGBOOST", "0.90")
setenv("EBDEVELXGBOOST", pathJoin(root, "logs/XGBoost-0.90-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.0
