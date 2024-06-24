help([==[

Description
===========
Pysam is a python module for reading and manipulating Samfiles. 
 It's a lightweight wrapper of the samtools C-API. Pysam also includes an interface for tabix.


More information
================
 - Homepage: https://github.com/pysam-developers/pysam
]==])

whatis([==[Description: Pysam is a python module for reading and manipulating Samfiles. 
 It's a lightweight wrapper of the samtools C-API. Pysam also includes an interface for tabix.]==])
whatis([==[Homepage: https://github.com/pysam-developers/pysam]==])
whatis([==[URL: https://github.com/pysam-developers/pysam]==])

local root = "/app/software/Pysam/0.17.0-GCC-11.2.0"

conflict("Pysam")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-11.2.0") ) then
    load("ncurses/6.2-GCCcore-11.2.0")
end

if not ( isloaded("cURL/7.78.0-GCCcore-11.2.0") ) then
    load("cURL/7.78.0-GCCcore-11.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-11.2.0") ) then
    load("XZ/5.2.5-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYSAM", root)
setenv("EBVERSIONPYSAM", "0.17.0")
setenv("EBDEVELPYSAM", pathJoin(root, "logs/Pysam-0.17.0-GCC-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.3
