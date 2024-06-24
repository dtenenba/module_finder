help([==[

Description
===========
A python extension, written in C, for quick access to bigBed files and access to and creation of
 bigWig files.


More information
================
 - Homepage: https://github.com/deeptools/pyBigWig
]==])

whatis([==[Description: A python extension, written in C, for quick access to bigBed files and access to and creation of
 bigWig files.]==])
whatis([==[Homepage: https://github.com/deeptools/pyBigWig]==])
whatis([==[URL: https://github.com/deeptools/pyBigWig]==])

local root = "/app/software/pyBigWig/0.3.17-foss-2019b-Python-3.7.4"

conflict("pyBigWig")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("cURL/7.66.0-GCCcore-8.3.0") ) then
    load("cURL/7.66.0-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYBIGWIG", root)
setenv("EBVERSIONPYBIGWIG", "0.3.17")
setenv("EBDEVELPYBIGWIG", pathJoin(root, "logs/pyBigWig-0.3.17-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.2
