help([==[

Description
===========
PostgreSQL is a powerful, open source object-relational
 database system.  It is fully ACID compliant, has full support for foreign
 keys, joins, views, triggers, and stored procedures (in multiple languages).
 It includes most SQL:2008 data types, including INTEGER, NUMERIC, BOOLEAN,
 CHAR, VARCHAR, DATE, INTERVAL, and TIMESTAMP. It also supports storage of
 binary large objects, including pictures, sounds, or video. It has native
 programming interfaces for C/C++, Java, .Net, Perl, Python, Ruby, Tcl, ODBC,
 among others, and exceptional documentation.


More information
================
 - Homepage: https://www.postgresql.org/
]==])

whatis([==[Description: PostgreSQL is a powerful, open source object-relational
 database system.  It is fully ACID compliant, has full support for foreign
 keys, joins, views, triggers, and stored procedures (in multiple languages).
 It includes most SQL:2008 data types, including INTEGER, NUMERIC, BOOLEAN,
 CHAR, VARCHAR, DATE, INTERVAL, and TIMESTAMP. It also supports storage of
 binary large objects, including pictures, sounds, or video. It has native
 programming interfaces for C/C++, Java, .Net, Perl, Python, Ruby, Tcl, ODBC,
 among others, and exceptional documentation.]==])
whatis([==[Homepage: https://www.postgresql.org/]==])
whatis([==[URL: https://www.postgresql.org/]==])

local root = "/app/software/PostgreSQL/10.3-foss-2019b"

conflict("PostgreSQL")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("libreadline/8.0-GCCcore-8.3.0") ) then
    load("libreadline/8.0-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPOSTGRESQL", root)
setenv("EBVERSIONPOSTGRESQL", "10.3")
setenv("EBDEVELPOSTGRESQL", pathJoin(root, "logs/PostgreSQL-10.3-foss-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.1.2