help([==[

Description
===========
anndata is a Python package for handling annotated data matrices in memory and on disk,
 positioned between pandas and xarray


More information
================
 - Homepage: https://github.com/scverse/anndata


Included extensions
===================
anndata-0.10.7, array_api_compat-1.6, natsort-8.4.0, packaging-24.0
]==])

whatis([==[Description: anndata is a Python package for handling annotated data matrices in memory and on disk,
 positioned between pandas and xarray]==])
whatis([==[Homepage: https://github.com/scverse/anndata]==])
whatis([==[URL: https://github.com/scverse/anndata]==])
whatis([==[Extensions: anndata-0.10.7, array_api_compat-1.6, natsort-8.4.0, packaging-24.0]==])

local root = "/app/software/anndata/0.10.7-foss-2023b"

conflict("anndata")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("Python/3.11.5-GCCcore-13.2.0") ) then
    load("Python/3.11.5-GCCcore-13.2.0")
end

if not ( isloaded("SciPy-bundle/2023.11-gfbf-2023b") ) then
    load("SciPy-bundle/2023.11-gfbf-2023b")
end

if not ( isloaded("h5py/3.11.0-foss-2023b") ) then
    load("h5py/3.11.0-foss-2023b")
end

if not ( isloaded("hatchling/1.18.0-GCCcore-13.2.0") ) then
    load("hatchling/1.18.0-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTANNDATA", root)
setenv("EBVERSIONANNDATA", "0.10.7")
setenv("EBDEVELANNDATA", pathJoin(root, "logs/anndata-0.10.7-foss-2023b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTANNDATA", "packaging-24.0,array_api_compat-1.6,natsort-8.4.0,anndata-0.10.7")
