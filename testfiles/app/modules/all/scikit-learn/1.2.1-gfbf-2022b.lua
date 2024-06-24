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


Included extensions
===================
scikit-learn-1.2.1, sklearn-0.0
]==])

whatis([==[Description: Scikit-learn integrates machine learning algorithms in the tightly-knit scientific Python world,
building upon numpy, scipy, and matplotlib. As a machine-learning module,
it provides versatile tools for data mining and analysis in any field of science and engineering.
It strives to be simple and efficient, accessible to everybody, and reusable in various contexts.]==])
whatis([==[Homepage: https://scikit-learn.org/stable/index.html]==])
whatis([==[URL: https://scikit-learn.org/stable/index.html]==])
whatis([==[Extensions: scikit-learn-1.2.1, sklearn-0.0]==])

local root = "/app/software/scikit-learn/1.2.1-gfbf-2022b"

conflict("scikit-learn")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCIKITMINLEARN", root)
setenv("EBVERSIONSCIKITMINLEARN", "1.2.1")
setenv("EBDEVELSCIKITMINLEARN", pathJoin(root, "logs/scikit-learn-1.2.1-gfbf-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTSCIKITMINLEARN", "scikit-learn-1.2.1,sklearn-0.0")
