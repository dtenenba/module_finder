help([==[

Description
===========
Fred Hutch Python


More information
================
 - Homepage: http://python.org/


Included extensions
===================
contextvars-2.4, editables-0.3, h11-0.14.0, immutables-0.19, importlib-
metadata-5.1.0, pathspec-0.10.2, sniffio-1.3.0, tomli-2.0.1
]==])

whatis([==[Description: Fred Hutch Python]==])
whatis([==[Homepage: http://python.org/]==])
whatis([==[URL: http://python.org/]==])
whatis([==[Extensions: contextvars-2.4, editables-0.3, h11-0.14.0, immutables-0.19, importlib-metadata-5.1.0, pathspec-0.10.2, sniffio-1.3.0, tomli-2.0.1]==])

local root = "/app/software/fhPython/3.9.6b-foss-2021b"

conflict("fhPython")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("MUMmer/4.0.0beta2-GCCcore-11.2.0") ) then
    load("MUMmer/4.0.0beta2-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2021b") ) then
    load("SciPy-bundle/2022.05-foss-2021b")
end

if not ( isloaded("IPython/7.26.0-GCCcore-11.2.0") ) then
    load("IPython/7.26.0-GCCcore-11.2.0")
end

if not ( isloaded("Boost/1.77.0-GCC-11.2.0") ) then
    load("Boost/1.77.0-GCC-11.2.0")
end

if not ( isloaded("matplotlib/3.5.2-foss-2021b") ) then
    load("matplotlib/3.5.2-foss-2021b")
end

if not ( isloaded("Biopython/1.79-foss-2021b") ) then
    load("Biopython/1.79-foss-2021b")
end

if not ( isloaded("Pysam/0.18.0-GCC-11.2.0") ) then
    load("Pysam/0.18.0-GCC-11.2.0")
end

if not ( isloaded("pybedtools/0.8.2-GCC-11.2.0") ) then
    load("pybedtools/0.8.2-GCC-11.2.0")
end

if not ( isloaded("PyYAML/5.4.1-GCCcore-11.2.0") ) then
    load("PyYAML/5.4.1-GCCcore-11.2.0")
end

if not ( isloaded("PyTables/3.6.1-foss-2021b") ) then
    load("PyTables/3.6.1-foss-2021b")
end

if not ( isloaded("h5py/3.6.0-foss-2021b") ) then
    load("h5py/3.6.0-foss-2021b")
end

if not ( isloaded("numba/0.54.1-foss-2021b") ) then
    load("numba/0.54.1-foss-2021b")
end

if not ( isloaded("awscli/2.11.21-GCCcore-11.2.0") ) then
    load("awscli/2.11.21-GCCcore-11.2.0")
end

if not ( isloaded("Pillow/9.1.0-GCCcore-11.2.0") ) then
    load("Pillow/9.1.0-GCCcore-11.2.0")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("scikit-build/0.11.1-GCCcore-11.2.0") ) then
    load("scikit-build/0.11.1-GCCcore-11.2.0")
end

if not ( isloaded("scikit-bio/0.5.7-foss-2021b") ) then
    load("scikit-bio/0.5.7-foss-2021b")
end

if not ( isloaded("scikit-image/0.19.1-foss-2021b") ) then
    load("scikit-image/0.19.1-foss-2021b")
end

if not ( isloaded("scikit-optimize/0.9.0-foss-2021b") ) then
    load("scikit-optimize/0.9.0-foss-2021b")
end

if not ( isloaded("Porechop/0.2.4-GCCcore-11.2.0") ) then
    load("Porechop/0.2.4-GCCcore-11.2.0")
end

if not ( isloaded("python-igraph/0.9.8-foss-2021b") ) then
    load("python-igraph/0.9.8-foss-2021b")
end

if not ( isloaded("statsmodels/0.13.1-foss-2021b") ) then
    load("statsmodels/0.13.1-foss-2021b")
end

if not ( isloaded("Blosc/1.21.1-GCCcore-11.2.0") ) then
    load("Blosc/1.21.1-GCCcore-11.2.0")
end

if not ( isloaded("dask/2022.1.0-foss-2021b") ) then
    load("dask/2022.1.0-foss-2021b")
end

if not ( isloaded("PostgreSQL/13.4-GCCcore-11.2.0") ) then
    load("PostgreSQL/13.4-GCCcore-11.2.0")
end

if not ( isloaded("typing-extensions/3.10.0.2-GCCcore-11.2.0") ) then
    load("typing-extensions/3.10.0.2-GCCcore-11.2.0")
end

if not ( isloaded("Arrow/6.0.0-foss-2021b") ) then
    load("Arrow/6.0.0-foss-2021b")
end

if not ( isloaded("ICU/69.1-GCCcore-11.2.0") ) then
    load("ICU/69.1-GCCcore-11.2.0")
end

if not ( isloaded("Pandoc/2.13") ) then
    load("Pandoc/2.13")
end

if not ( isloaded("FreeTDS/1.3.6-GCCcore-11.2.0") ) then
    load("FreeTDS/1.3.6-GCCcore-11.2.0")
end

if not ( isloaded("OpenJPEG/2.4.0-GCCcore-11.2.0") ) then
    load("OpenJPEG/2.4.0-GCCcore-11.2.0")
end

if not ( isloaded("OpenBLAS/0.3.18-GCC-11.2.0") ) then
    load("OpenBLAS/0.3.18-GCC-11.2.0")
end

if not ( isloaded("Tk/8.6.11-GCCcore-11.2.0") ) then
    load("Tk/8.6.11-GCCcore-11.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-11.2.0") ) then
    load("libxml2/2.9.10-GCCcore-11.2.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-11.2.0") ) then
    load("libxslt/1.1.34-GCCcore-11.2.0")
end

if not ( isloaded("libffi/3.4.2-GCCcore-11.2.0") ) then
    load("libffi/3.4.2-GCCcore-11.2.0")
end

if not ( isloaded("Qt5/5.15.2-GCCcore-11.2.0") ) then
    load("Qt5/5.15.2-GCCcore-11.2.0")
end

if not ( isloaded("cURL/7.78.0-GCCcore-11.2.0") ) then
    load("cURL/7.78.0-GCCcore-11.2.0")
end

if not ( isloaded("libGLU/9.0.2-GCCcore-11.2.0") ) then
    load("libGLU/9.0.2-GCCcore-11.2.0")
end

if not ( isloaded("Mesa/21.1.7-GCCcore-11.2.0") ) then
    load("Mesa/21.1.7-GCCcore-11.2.0")
end

if not ( isloaded("netCDF/4.8.1-gompi-2021b") ) then
    load("netCDF/4.8.1-gompi-2021b")
end

if not ( isloaded("snappy/1.1.9-GCCcore-11.2.0") ) then
    load("snappy/1.1.9-GCCcore-11.2.0")
end

if not ( isloaded("freetype/2.11.0-GCCcore-11.2.0") ) then
    load("freetype/2.11.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFHPYTHON", root)
setenv("EBVERSIONFHPYTHON", "3.9.6b")
setenv("EBDEVELFHPYTHON", pathJoin(root, "logs/fhPython-3.9.6b-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
