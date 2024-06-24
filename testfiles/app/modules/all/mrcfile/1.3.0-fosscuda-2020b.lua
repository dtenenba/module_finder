help([==[

Description
===========
mrcfile is a Python implementation of the MRC2014 file format, which is used in 
structural biology to store image and volume data.
It allows MRC files to be created and opened easily using a very simple API,   
which exposes the file’s header and data as numpy arrays. The code runs in     
Python 2 and 3 and is fully unit-tested.
This library aims to allow users and developers to read and write standard-
compliant MRC files in Python as easily as possible, and with no dependencies on
any compiled libraries except numpy. You can use it interactively to inspect 
files, correct headers and so on, or in scripts and larger software packages to 
provide basic MRC file I/O functions.


More information
================
 - Homepage: https://github.com/ccpem/mrcfile
]==])

whatis([==[Description: mrcfile is a Python implementation of the MRC2014 file format, which is used in 
structural biology to store image and volume data.
It allows MRC files to be created and opened easily using a very simple API,   
which exposes the file’s header and data as numpy arrays. The code runs in     
Python 2 and 3 and is fully unit-tested.
This library aims to allow users and developers to read and write standard-
compliant MRC files in Python as easily as possible, and with no dependencies on
any compiled libraries except numpy. You can use it interactively to inspect 
files, correct headers and so on, or in scripts and larger software packages to 
provide basic MRC file I/O functions. ]==])
whatis([==[Homepage: https://github.com/ccpem/mrcfile]==])
whatis([==[URL: https://github.com/ccpem/mrcfile]==])

local root = "/app/software/mrcfile/1.3.0-fosscuda-2020b"

conflict("mrcfile")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-fosscuda-2020b") ) then
    load("SciPy-bundle/2020.11-fosscuda-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMRCFILE", root)
setenv("EBVERSIONMRCFILE", "1.3.0")
setenv("EBDEVELMRCFILE", pathJoin(root, "logs/mrcfile-1.3.0-fosscuda-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.8.1
