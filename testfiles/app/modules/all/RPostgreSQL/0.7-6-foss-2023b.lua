help([==[

Description
===========
Database interface and 'PostgreSQL' driver for 'R'. This package provides a
Database Interface 'DBI' compliant driver for 'R' to access 'PostgreSQL'
database systems.


More information
================
 - Homepage: https://cran.r-project.org/package=tesseract


Included extensions
===================
DBI-1.2.2, RPostgreSQL-0.7-6
]==])

whatis([==[Description: 
Database interface and 'PostgreSQL' driver for 'R'. This package provides a
Database Interface 'DBI' compliant driver for 'R' to access 'PostgreSQL'
database systems.]==])
whatis([==[Homepage: https://cran.r-project.org/package=tesseract]==])
whatis([==[URL: https://cran.r-project.org/package=tesseract]==])
whatis([==[Extensions: DBI-1.2.2, RPostgreSQL-0.7-6]==])

local root = "/app/software/RPostgreSQL/0.7-6-foss-2023b"

conflict("RPostgreSQL")

if not ( isloaded("foss/2023b") ) then
    load("foss/2023b")
end

if not ( isloaded("R/4.3.3-gfbf-2023b") ) then
    load("R/4.3.3-gfbf-2023b")
end

if not ( isloaded("PostgreSQL/16.1-GCCcore-13.2.0") ) then
    load("PostgreSQL/16.1-GCCcore-13.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRPOSTGRESQL", root)
setenv("EBVERSIONRPOSTGRESQL", "0.7-6")
setenv("EBDEVELRPOSTGRESQL", pathJoin(root, "logs/RPostgreSQL-0.7-6-foss-2023b-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTRPOSTGRESQL", "DBI-1.2.2,RPostgreSQL-0.7-6")
