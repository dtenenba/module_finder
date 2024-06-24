help([==[

Description
===========
binutils: GNU binary utilities


More information
================
 - Homepage: https://directory.fsf.org/project/binutils/
]==])

whatis([==[Description: binutils: GNU binary utilities]==])
whatis([==[Homepage: https://directory.fsf.org/project/binutils/]==])
whatis([==[URL: https://directory.fsf.org/project/binutils/]==])

local root = "/app/software/binutils/2.32-GCCcore-8.3.0"

conflict("binutils")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBINUTILS", root)
setenv("EBVERSIONBINUTILS", "2.32")
setenv("EBDEVELBINUTILS", pathJoin(root, "logs/binutils-2.32-GCCcore-8.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.1.2
