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

local root = "/app/software/pyBigWig/0.3.22-gfbf-2022b"

conflict("pyBigWig")

if not ( isloaded("gfbf/2022b") ) then
    load("gfbf/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("cURL/7.86.0-GCCcore-12.2.0") ) then
    load("cURL/7.86.0-GCCcore-12.2.0")
end

if not ( isloaded("NSS/3.85-GCCcore-12.2.0") ) then
    load("NSS/3.85-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYBIGWIG", root)
setenv("EBVERSIONPYBIGWIG", "0.3.22")
setenv("EBDEVELPYBIGWIG", pathJoin(root, "logs/pyBigWig-0.3.22-gfbf-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
