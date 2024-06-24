help([==[

Description
===========
Fred Hutch Python


More information
================
 - Homepage: http://python.org/

]==])

whatis([==[Description: Fred Hutch Python]==])
whatis([==[Homepage: http://python.org/]==])
whatis([==[URL: http://python.org/]==])

local root = "/app/software/fhPython/3.8.6-foss-2020b-Python-3.8.6"

conflict("fhPython")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("MUMmer/4.0.0beta2-foss-2020a") ) then
    load("MUMmer/4.0.0beta2-foss-2020a")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("IPython/7.18.1-GCCcore-10.2.0") ) then
    load("IPython/7.18.1-GCCcore-10.2.0")
end

if not ( isloaded("Boost/1.74.0-GCC-10.2.0") ) then
    load("Boost/1.74.0-GCC-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-foss-2020b") ) then
    load("matplotlib/3.3.3-foss-2020b")
end

if not ( isloaded("Biopython/1.78-foss-2020b-Python-3.8.6") ) then
    load("Biopython/1.78-foss-2020b-Python-3.8.6")
end

if not ( isloaded("Pysam/0.16.0.1-GCC-10.2.0") ) then
    load("Pysam/0.16.0.1-GCC-10.2.0")
end

if not ( isloaded("pybedtools/0.8.1-GCC-10.2.0") ) then
    load("pybedtools/0.8.1-GCC-10.2.0")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("PyTables/3.6.1-foss-2020b") ) then
    load("PyTables/3.6.1-foss-2020b")
end

if not ( isloaded("h5py/3.1.0-foss-2020b") ) then
    load("h5py/3.1.0-foss-2020b")
end

if not ( isloaded("numba/0.53.1-foss-2020b") ) then
    load("numba/0.53.1-foss-2020b")
end

if not ( isloaded("awscli/1.19.53-GCCcore-10.2.0") ) then
    load("awscli/1.19.53-GCCcore-10.2.0")
end

if not ( isloaded("Pillow/8.0.1-GCCcore-10.2.0") ) then
    load("Pillow/8.0.1-GCCcore-10.2.0")
end

if not ( isloaded("scikit-learn/0.23.2-foss-2020b") ) then
    load("scikit-learn/0.23.2-foss-2020b")
end

if not ( isloaded("PyClone/2020.9b2-GCCcore-10.2.0") ) then
    load("PyClone/2020.9b2-GCCcore-10.2.0")
end

if not ( isloaded("Blosc/1.21.0-GCCcore-10.2.0") ) then
    load("Blosc/1.21.0-GCCcore-10.2.0")
end

if not ( isloaded("dask/2021.2.0-foss-2020b") ) then
    load("dask/2021.2.0-foss-2020b")
end

if not ( isloaded("PostgreSQL/13.2-GCCcore-10.2.0") ) then
    load("PostgreSQL/13.2-GCCcore-10.2.0")
end

if not ( isloaded("typing-extensions/3.7.4.3-GCCcore-10.2.0") ) then
    load("typing-extensions/3.7.4.3-GCCcore-10.2.0")
end

if not ( isloaded("Arrow/0.17.1-foss-2020b") ) then
    load("Arrow/0.17.1-foss-2020b")
end

if not ( isloaded("ICU/67.1-GCCcore-10.2.0") ) then
    load("ICU/67.1-GCCcore-10.2.0")
end

if not ( isloaded("Pandoc/2.10") ) then
    load("Pandoc/2.10")
end

if not ( isloaded("FreeTDS/1.2.20-GCCcore-10.2.0") ) then
    load("FreeTDS/1.2.20-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("OpenJPEG/2.4.0-GCCcore-10.2.0") ) then
    load("OpenJPEG/2.4.0-GCCcore-10.2.0")
end

if not ( isloaded("OpenBLAS/0.3.12-GCC-10.2.0") ) then
    load("OpenBLAS/0.3.12-GCC-10.2.0")
end

if not ( isloaded("Tk/8.6.10-GCCcore-10.2.0") ) then
    load("Tk/8.6.10-GCCcore-10.2.0")
end

if not ( isloaded("libxml2/2.9.10-GCCcore-10.2.0") ) then
    load("libxml2/2.9.10-GCCcore-10.2.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-10.2.0") ) then
    load("libxslt/1.1.34-GCCcore-10.2.0")
end

if not ( isloaded("libffi/3.3-GCCcore-10.2.0") ) then
    load("libffi/3.3-GCCcore-10.2.0")
end

if not ( isloaded("Qt5/5.14.2-GCCcore-10.2.0") ) then
    load("Qt5/5.14.2-GCCcore-10.2.0")
end

if not ( isloaded("cURL/7.72.0-GCCcore-10.2.0") ) then
    load("cURL/7.72.0-GCCcore-10.2.0")
end

if not ( isloaded("libGLU/9.0.1-GCCcore-10.2.0") ) then
    load("libGLU/9.0.1-GCCcore-10.2.0")
end

if not ( isloaded("Mesa/20.2.1-GCCcore-10.2.0") ) then
    load("Mesa/20.2.1-GCCcore-10.2.0")
end

if not ( isloaded("netCDF/4.7.4-gompi-2020b") ) then
    load("netCDF/4.7.4-gompi-2020b")
end

if not ( isloaded("igraph/0.8.5-foss-2020b") ) then
    load("igraph/0.8.5-foss-2020b")
end

if not ( isloaded("snappy/1.1.8-GCCcore-10.2.0") ) then
    load("snappy/1.1.8-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFHPYTHON", root)
setenv("EBVERSIONFHPYTHON", "3.8.6")
setenv("EBDEVELFHPYTHON", pathJoin(root, "logs/fhPython-3.8.6-foss-2020b-Python-3.8.6-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
