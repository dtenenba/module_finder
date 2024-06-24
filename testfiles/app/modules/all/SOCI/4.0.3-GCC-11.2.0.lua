help([==[

Description
===========
SOCI is a database access library for C++ that makes the illusion of embedding SQL queries in the
 regular C++ code, staying entirely within the Standard C++.


More information
================
 - Homepage: http://soci.sourceforge.net/
]==])

whatis([==[Description: SOCI is a database access library for C++ that makes the illusion of embedding SQL queries in the
 regular C++ code, staying entirely within the Standard C++.]==])
whatis([==[Homepage: http://soci.sourceforge.net/]==])
whatis([==[URL: http://soci.sourceforge.net/]==])

local root = "/app/software/SOCI/4.0.3-GCC-11.2.0"

conflict("SOCI")

if not ( isloaded("GCC/11.2.0") ) then
    load("GCC/11.2.0")
end

if not ( isloaded("Boost/1.77.0-GCC-11.2.0") ) then
    load("Boost/1.77.0-GCC-11.2.0")
end

if not ( isloaded("SQLite/3.36-GCCcore-11.2.0") ) then
    load("SQLite/3.36-GCCcore-11.2.0")
end

if not ( isloaded("PostgreSQL/13.4-GCCcore-11.2.0") ) then
    load("PostgreSQL/13.4-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSOCI", root)
setenv("EBVERSIONSOCI", "4.0.3")
setenv("EBDEVELSOCI", pathJoin(root, "logs/SOCI-4.0.3-GCC-11.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.5.3
