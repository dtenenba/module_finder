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
flit-2.3.0, flit-core-2.3.0, pytoml-0.1.21, scikit-learn-0.23.1,
threadpoolctl-2.1.0
]==])

whatis([==[Description: Scikit-learn integrates machine learning algorithms in the tightly-knit scientific Python world,
building upon numpy, scipy, and matplotlib. As a machine-learning module,
it provides versatile tools for data mining and analysis in any field of science and engineering.
It strives to be simple and efficient, accessible to everybody, and reusable in various contexts.]==])
whatis([==[Homepage: https://scikit-learn.org/stable/index.html]==])
whatis([==[URL: https://scikit-learn.org/stable/index.html]==])
whatis([==[Extensions: flit-2.3.0, flit-core-2.3.0, pytoml-0.1.21, scikit-learn-0.23.1, threadpoolctl-2.1.0]==])

local root = "/app/software/scikit-learn/0.23.1-foss-2020a-Python-3.8.2"

conflict("scikit-learn")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIKITMINLEARN", root)
setenv("EBVERSIONSCIKITMINLEARN", "0.23.1")
setenv("EBDEVELSCIKITMINLEARN", pathJoin(root, "logs/scikit-learn-0.23.1-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTSCIKITMINLEARN", "pytoml-0.1.21,flit-core-2.3.0,flit-2.3.0,threadpoolctl-2.1.0,scikit-learn-0.23.1")
