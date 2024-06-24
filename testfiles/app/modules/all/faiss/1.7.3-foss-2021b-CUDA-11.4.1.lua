help([==[

Description
===========
FAISS (Facebook AI Similarity Search) is a library that allows developers to
 quickly search for embeddings of multimedia documents that are similar to each other.


More information
================
 - Homepage: https://ai.facebook.com/tools/faiss/
]==])

whatis([==[Description: FAISS (Facebook AI Similarity Search) is a library that allows developers to
 quickly search for embeddings of multimedia documents that are similar to each other.]==])
whatis([==[Homepage: https://ai.facebook.com/tools/faiss/]==])
whatis([==[URL: https://ai.facebook.com/tools/faiss/]==])

local root = "/app/software/faiss/1.7.3-foss-2021b-CUDA-11.4.1"

conflict("faiss")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("FlexiBLAS/3.0.4-GCC-11.2.0") ) then
    load("FlexiBLAS/3.0.4-GCC-11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2021b") ) then
    load("SciPy-bundle/2022.05-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFAISS", root)
setenv("EBVERSIONFAISS", "1.7.3")
setenv("EBDEVELFAISS", pathJoin(root, "logs/faiss-1.7.3-foss-2021b-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
