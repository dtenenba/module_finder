help([==[

Description
===========
C++ interface to HTSlib, BWA-MEM and Fermi


More information
================
 - Homepage: https://github.com/walaj/SeqLib
]==])

whatis([==[Description: C++ interface to HTSlib, BWA-MEM and Fermi]==])
whatis([==[Homepage: https://github.com/walaj/SeqLib]==])
whatis([==[URL: https://github.com/walaj/SeqLib]==])

local root = "/app/software/SeqLib/1.2.0-GCC-10.2.0"

conflict("SeqLib")

if not ( isloaded("GCC/10.2.0") ) then
    load("GCC/10.2.0")
end

if not ( isloaded("XZ/5.2.5-GCCcore-10.2.0") ) then
    load("XZ/5.2.5-GCCcore-10.2.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-10.2.0") ) then
    load("bzip2/1.0.8-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSEQLIB", root)
setenv("EBVERSIONSEQLIB", "1.2.0")
setenv("EBDEVELSEQLIB", pathJoin(root, "logs/SeqLib-1.2.0-GCC-10.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.3.2
