help([==[

Description
===========
Pysam is a python module for reading and manipulating Samfiles.
 It's a lightweight wrapper of the samtools C-API. Pysam also includes an interface for tabix.


More information
================
 - Homepage: https://github.com/pysam-developers/pysam


Compatible modules
==================
This module is compatible with the following modules, one of each line is required:
* Python/3.8.2-GCCcore-9.3.0 (default), Python/2.7.18-GCCcore-9.3.0
]==])

whatis([==[Description: Pysam is a python module for reading and manipulating Samfiles.
 It's a lightweight wrapper of the samtools C-API. Pysam also includes an interface for tabix.]==])
whatis([==[Homepage: https://github.com/pysam-developers/pysam]==])
whatis([==[URL: https://github.com/pysam-developers/pysam]==])
whatis([==[Compatible modules: Python/3.8.2-GCCcore-9.3.0 (default), Python/2.7.18-GCCcore-9.3.0]==])

local root = "/app/software/Pysam/0.16.0.1-GCC-9.3.0"

conflict("Pysam")

if not ( isloaded("GCC/9.3.0") ) then
    load("GCC/9.3.0")
end

if not ( isloaded("ncurses/6.2-GCCcore-9.3.0") ) then
    load("ncurses/6.2-GCCcore-9.3.0")
end

if not ( isloaded("cURL/7.69.1-GCCcore-9.3.0") ) then
    load("cURL/7.69.1-GCCcore-9.3.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-9.3.0") ) then
    load("XZ/5.2.5-GCCcore-9.3.0")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) and not ( isloaded("Python/2.7.18-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYSAM", root)
setenv("EBVERSIONPYSAM", "0.16.0.1")
setenv("EBDEVELPYSAM", pathJoin(root, "logs/Pysam-0.16.0.1-GCC-9.3.0-easybuild-devel"))

prepend_path("EBPYTHONPREFIXES", root)
-- Built with EasyBuild version 4.2.2
