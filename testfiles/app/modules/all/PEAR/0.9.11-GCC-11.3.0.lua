help([==[

Description
===========
PEAR is an ultrafast, memory-efficient and highly accurate pair-end read merger. 
 It is fully parallelized and can run with as low as just a few kilobytes of memory.


More information
================
 - Homepage: https://cme.h-its.org/exelixis/web/software/pear/
]==])

whatis([==[Description: PEAR is an ultrafast, memory-efficient and highly accurate pair-end read merger. 
 It is fully parallelized and can run with as low as just a few kilobytes of memory.]==])
whatis([==[Homepage: https://cme.h-its.org/exelixis/web/software/pear/]==])
whatis([==[URL: https://cme.h-its.org/exelixis/web/software/pear/]==])

local root = "/app/software/PEAR/0.9.11-GCC-11.3.0"

conflict("PEAR")

if not ( isloaded("GCC/11.3.0") ) then
    load("GCC/11.3.0")
end

if not ( isloaded("zlib/1.2.12-GCCcore-11.3.0") ) then
    load("zlib/1.2.12-GCCcore-11.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-11.3.0") ) then
    load("bzip2/1.0.8-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPEAR", root)
setenv("EBVERSIONPEAR", "0.9.11")
setenv("EBDEVELPEAR", pathJoin(root, "logs/PEAR-0.9.11-GCC-11.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.1
