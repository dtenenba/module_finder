help([==[

Description
===========
FreeTDS is a set of libraries for Unix and Linux that allows your programs to
 natively talk to Microsoft SQL Server and Sybase databases.


More information
================
 - Homepage: http://www.freedesktop.org/
]==])

whatis([==[Description: FreeTDS is a set of libraries for Unix and Linux that allows your programs to
 natively talk to Microsoft SQL Server and Sybase databases.]==])
whatis([==[Homepage: http://www.freedesktop.org/]==])
whatis([==[URL: http://www.freedesktop.org/]==])

local root = "/app/software/freetds/1.2-GCCcore-9.3.0"

conflict("freetds")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFREETDS", root)
setenv("EBVERSIONFREETDS", "1.2")
setenv("EBDEVELFREETDS", pathJoin(root, "logs/freetds-1.2-GCCcore-9.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.2.2
