help([==[

Description
===========
LIBSVM is an integrated software for support vector classification, (C-SVC, nu-SVC), regression
 (epsilon-SVR, nu-SVR) and distribution estimation (one-class SVM). It supports multi-class classification.


More information
================
 - Homepage: https://www.csie.ntu.edu.tw/~cjlin/libsvm/
]==])

whatis([==[Description: LIBSVM is an integrated software for support vector classification, (C-SVC, nu-SVC), regression
 (epsilon-SVR, nu-SVR) and distribution estimation (one-class SVM). It supports multi-class classification.]==])
whatis([==[Homepage: https://www.csie.ntu.edu.tw/~cjlin/libsvm/]==])
whatis([==[URL: https://www.csie.ntu.edu.tw/~cjlin/libsvm/]==])

local root = "/app/software/LIBSVM/3.25-GCCcore-10.2.0"

conflict("LIBSVM")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("binutils/2.35-GCCcore-10.2.0") ) then
    load("binutils/2.35-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIBSVM", root)
setenv("EBVERSIONLIBSVM", "3.25")
setenv("EBDEVELLIBSVM", pathJoin(root, "logs/LIBSVM-3.25-GCCcore-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.1
