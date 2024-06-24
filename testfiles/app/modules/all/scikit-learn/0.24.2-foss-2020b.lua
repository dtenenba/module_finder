help([==[

Description
===========
Scikit-learn integrates machine learning algorithms in the tightly-knit scientific Python world,
building upon numpy, scipy, and matplotlib. As a machine-learning module,
it provides versatile tools for data mining and analysis in any field of science and engineering.
It strives to be simple and efficient, accessible to everybody, and reusable in various contexts.


More information
================
 - Homepage: https://scikit-learn.org/stable/index.html
]==])

whatis([==[Description: Scikit-learn integrates machine learning algorithms in the tightly-knit scientific Python world,
building upon numpy, scipy, and matplotlib. As a machine-learning module,
it provides versatile tools for data mining and analysis in any field of science and engineering.
It strives to be simple and efficient, accessible to everybody, and reusable in various contexts.]==])
whatis([==[Homepage: https://scikit-learn.org/stable/index.html]==])
whatis([==[URL: https://scikit-learn.org/stable/index.html]==])

local root = "/app/software/scikit-learn/0.24.2-foss-2020b"

conflict("scikit-learn")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTSCIKITMINLEARN", root)
setenv("EBVERSIONSCIKITMINLEARN", "0.24.2")
setenv("EBDEVELSCIKITMINLEARN", pathJoin(root, "logs/scikit-learn-0.24.2-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.0
