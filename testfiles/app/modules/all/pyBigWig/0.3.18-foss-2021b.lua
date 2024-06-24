help([==[

Description
===========
A python extension, written in C, for quick access to bigBed
 files and access to and creation of bigWig files.


More information
================
 - Homepage: https://github.com/deeptools/pyBigWig
]==])

whatis([==[Description: A python extension, written in C, for quick access to bigBed
 files and access to and creation of bigWig files.]==])
whatis([==[Homepage: https://github.com/deeptools/pyBigWig]==])
whatis([==[URL: https://github.com/deeptools/pyBigWig]==])

local root = "/app/software/pyBigWig/0.3.18-foss-2021b"

conflict("pyBigWig")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("cURL/7.78.0-GCCcore-11.2.0") ) then
    load("cURL/7.78.0-GCCcore-11.2.0")
end

if not ( isloaded("NSS/3.69-GCCcore-11.2.0") ) then
    load("NSS/3.69-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYBIGWIG", root)
setenv("EBVERSIONPYBIGWIG", "0.3.18")
setenv("EBDEVELPYBIGWIG", pathJoin(root, "logs/pyBigWig-0.3.18-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
