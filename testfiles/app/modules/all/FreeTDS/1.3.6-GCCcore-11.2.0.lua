help([==[

Description
===========
FreeTDS is a set of libraries for Unix and Linux that allows your programs to
 natively talk to Microsoft SQL Server and Sybase databases.


More information
================
 - Homepage: https://www.freetds.org/
]==])

whatis([==[Description: FreeTDS is a set of libraries for Unix and Linux that allows your programs to
 natively talk to Microsoft SQL Server and Sybase databases.]==])
whatis([==[Homepage: https://www.freetds.org/]==])
whatis([==[URL: https://www.freetds.org/]==])

local root = "/app/software/FreeTDS/1.3.6-GCCcore-11.2.0"

conflict("FreeTDS")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("libreadline/8.1-GCCcore-11.2.0") ) then
    load("libreadline/8.1-GCCcore-11.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFREETDS", root)
setenv("EBVERSIONFREETDS", "1.3.6")
setenv("EBDEVELFREETDS", pathJoin(root, "logs/FreeTDS-1.3.6-GCCcore-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.6.0
