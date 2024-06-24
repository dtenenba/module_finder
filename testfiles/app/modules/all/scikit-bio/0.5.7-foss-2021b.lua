help([==[

Description
===========
scikit-bio is an open-source, BSD-licensed Python 3 package providing data structures, algorithms
and educational resources for bioinformatics.


More information
================
 - Homepage: http://scikit-bio.org


Included extensions
===================
CacheControl-0.12.11, hdmedians-0.14.2, lockfile-0.12.2, msgpack-1.0.1,
natsort-8.1.0, scikit-bio-0.5.7
]==])

whatis([==[Description: scikit-bio is an open-source, BSD-licensed Python 3 package providing data structures, algorithms
and educational resources for bioinformatics.]==])
whatis([==[Homepage: http://scikit-bio.org]==])
whatis([==[URL: http://scikit-bio.org]==])
whatis([==[Extensions: CacheControl-0.12.11, hdmedians-0.14.2, lockfile-0.12.2, msgpack-1.0.1, natsort-8.1.0, scikit-bio-0.5.7]==])

local root = "/app/software/scikit-bio/0.5.7-foss-2021b"

conflict("scikit-bio")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("IPython/7.26.0-GCCcore-11.2.0") ) then
    load("IPython/7.26.0-GCCcore-11.2.0")
end

if not ( isloaded("h5py/3.6.0-foss-2021b") ) then
    load("h5py/3.6.0-foss-2021b")
end

if not ( isloaded("Pillow/8.3.2-GCCcore-11.2.0") ) then
    load("Pillow/8.3.2-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIKITMINBIO", root)
setenv("EBVERSIONSCIKITMINBIO", "0.5.7")
setenv("EBDEVELSCIKITMINBIO", pathJoin(root, "logs/scikit-bio-0.5.7-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTSCIKITMINBIO", "msgpack-1.0.1,CacheControl-0.12.11,hdmedians-0.14.2,lockfile-0.12.2,natsort-8.1.0,scikit-bio-0.5.7")
