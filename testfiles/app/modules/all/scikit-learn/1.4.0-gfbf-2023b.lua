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
scikit-learn-1.4.0, sklearn-0.0
]==])

whatis([==[Description: Scikit-learn integrates machine learning algorithms in the tightly-knit scientific Python world,
building upon numpy, scipy, and matplotlib. As a machine-learning module,
it provides versatile tools for data mining and analysis in any field of science and engineering.
It strives to be simple and efficient, accessible to everybody, and reusable in various contexts.]==])
whatis([==[Homepage: https://scikit-learn.org/stable/index.html]==])
whatis([==[URL: https://scikit-learn.org/stable/index.html]==])
whatis([==[Extensions: scikit-learn-1.4.0, sklearn-0.0]==])

local root = "/app/software/scikit-learn/1.4.0-gfbf-2023b"

conflict("scikit-learn")

if not ( isloaded("gfbf/2023b") ) then
    load("gfbf/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.10-GCCcore-13.2.0") ) then
    load("Python-bundle-PyPI/2023.10-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSCIKITMINLEARN", root)
setenv("EBVERSIONSCIKITMINLEARN", "1.4.0")
setenv("EBDEVELSCIKITMINLEARN", pathJoin(root, "logs/scikit-learn-1.4.0-gfbf-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTSCIKITMINLEARN", "scikit-learn-1.4.0,sklearn-0.0")
