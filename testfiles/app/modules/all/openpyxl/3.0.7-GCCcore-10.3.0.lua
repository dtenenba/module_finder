help([==[

Description
===========
A Python library to read/write Excel 2010 xlsx/xlsm files


More information
================
 - Homepage: https://openpyxl.readthedocs.io


Included extensions
===================
et_xmlfile-1.1.0, jdcal-1.4.1, openpyxl-3.0.7
]==])

whatis([==[Description: A Python library to read/write Excel 2010 xlsx/xlsm files]==])
whatis([==[Homepage: https://openpyxl.readthedocs.io]==])
whatis([==[URL: https://openpyxl.readthedocs.io]==])
whatis([==[Extensions: et_xmlfile-1.1.0, jdcal-1.4.1, openpyxl-3.0.7]==])

local root = "/app/software/openpyxl/3.0.7-GCCcore-10.3.0"

conflict("openpyxl")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("Python/3.9.5-GCCcore-10.3.0") ) then
    load("Python/3.9.5-GCCcore-10.3.0")
end

if not ( isloaded("lxml/4.6.3-GCCcore-10.3.0") ) then
    load("lxml/4.6.3-GCCcore-10.3.0")
end

if not ( isloaded("Pillow/8.2.0-GCCcore-10.3.0") ) then
    load("Pillow/8.2.0-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTOPENPYXL", root)
setenv("EBVERSIONOPENPYXL", "3.0.7")
setenv("EBDEVELOPENPYXL", pathJoin(root, "logs/openpyxl-3.0.7-GCCcore-10.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTOPENPYXL", "et_xmlfile-1.1.0,jdcal-1.4.1,openpyxl-3.0.7")
