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

local root = "/app/software/scikit-misc/0.1.4-foss-2021b"

conflict("scikit-misc")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSCIKITMINMISC", root)
setenv("EBVERSIONSCIKITMINMISC", "0.1.4")
setenv("EBDEVELSCIKITMINMISC", pathJoin(root, "logs/scikit-misc-0.1.4-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
