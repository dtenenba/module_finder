help([==[

Description
===========
A Python module for creating Excel XLSX files


More information
================
 - Homepage: https://xlsxwriter.readthedocs.io/
]==])

whatis([==[Description: A Python module for creating Excel XLSX files]==])
whatis([==[Homepage: https://xlsxwriter.readthedocs.io/]==])
whatis([==[URL: https://xlsxwriter.readthedocs.io/]==])

local root = "/app/software/XlsxWriter/3.0.2-GCCcore-11.2.0"

conflict("XlsxWriter")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTXLSXWRITER", root)
setenv("EBVERSIONXLSXWRITER", "3.0.2")
setenv("EBDEVELXLSXWRITER", pathJoin(root, "logs/XlsxWriter-3.0.2-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
