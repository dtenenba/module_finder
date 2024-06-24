help([==[

Description
===========
Miscellaneous tools for data analysis and scientific computing


More information
================
 - Homepage: https://github.com/has2k1/scikit-misc
]==])

whatis([==[Description: Miscellaneous tools for data analysis and scientific computing]==])
whatis([==[Homepage: https://github.com/has2k1/scikit-misc]==])
whatis([==[URL: https://github.com/has2k1/scikit-misc]==])

local root = "/app/software/scikit-misc/0.1.4-foss-2021a"

conflict("scikit-misc")

if not ( isloaded("foss/2021a") ) then
    load("foss/2021a")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("SciPy-bundle/2021.05-foss-2021a") ) then
    load("SciPy-bundle/2021.05-foss-2021a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSCIKITMINMISC", root)
setenv("EBVERSIONSCIKITMINMISC", "0.1.4")
setenv("EBDEVELSCIKITMINMISC", pathJoin(root, "logs/scikit-misc-0.1.4-foss-2021a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
