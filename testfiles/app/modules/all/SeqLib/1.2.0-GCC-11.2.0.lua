help([==[

Description
===========
C++ interface to HTSlib, BWA-MEM and Fermi.


More information
================
 - Homepage: https://github.com/walaj/SeqLib
]==])

whatis([==[Description: C++ interface to HTSlib, BWA-MEM and Fermi.]==])
whatis([==[Homepage: https://github.com/walaj/SeqLib]==])
whatis([==[URL: https://github.com/walaj/SeqLib]==])

local root = "/app/software/SeqLib/1.2.0-GCC-11.2.0"

conflict("SeqLib")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-11.2.0") ) then
    load("zlib/1.2.11-GCCcore-11.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-11.2.0") ) then
    load("XZ/5.2.5-GCCcore-11.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.2.0") ) then
    load("bzip2/1.0.8-GCCcore-11.2.0")
end

if not ( isloaded("JsonCpp/1.9.4-GCCcore-11.2.0") ) then
    load("JsonCpp/1.9.4-GCCcore-11.2.0")
end

if not ( isloaded("BWA/0.7.17-GCCcore-11.2.0") ) then
    load("BWA/0.7.17-GCCcore-11.2.0")
end

if not ( isloaded("HTSlib/1.14-GCC-11.2.0") ) then
    load("HTSlib/1.14-GCC-11.2.0")
end

if not ( isloaded("fermi-lite/20190320-GCCcore-11.2.0") ) then
    load("fermi-lite/20190320-GCCcore-11.2.0")
end

if not ( isloaded("SSW/1.1-GCCcore-11.2.0") ) then
    load("SSW/1.1-GCCcore-11.2.0")
end

if not ( isloaded("PCRE/8.45-GCCcore-11.2.0") ) then
    load("PCRE/8.45-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSEQLIB", root)
setenv("EBVERSIONSEQLIB", "1.2.0")
setenv("EBDEVELSEQLIB", pathJoin(root, "logs/SeqLib-1.2.0-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.2
