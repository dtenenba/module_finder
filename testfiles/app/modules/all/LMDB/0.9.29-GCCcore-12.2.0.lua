help([==[

Description
===========
LMDB is a fast, memory-efficient database. With memory-mapped files, it has the read performance
 of a pure in-memory database while retaining the persistence of standard disk-based databases.


More information
================
 - Homepage: https://symas.com/lmdb
]==])

whatis([==[Description: LMDB is a fast, memory-efficient database. With memory-mapped files, it has the read performance
 of a pure in-memory database while retaining the persistence of standard disk-based databases.]==])
whatis([==[Homepage: https://symas.com/lmdb]==])
whatis([==[URL: https://symas.com/lmdb]==])

local root = "/app/software/LMDB/0.9.29-GCCcore-12.2.0"

conflict("LMDB")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLMDB", root)
setenv("EBVERSIONLMDB", "0.9.29")
setenv("EBDEVELLMDB", pathJoin(root, "logs/LMDB-0.9.29-GCCcore-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.2
