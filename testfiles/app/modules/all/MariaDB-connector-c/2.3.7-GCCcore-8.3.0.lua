help([==[

Description
===========
MariaDB Connector/C is used to connect applications developed in C/C++ to MariaDB and MySQL databases.


More information
================
 - Homepage: https://downloads.mariadb.org/connector-c/
]==])

whatis([==[Description: MariaDB Connector/C is used to connect applications developed in C/C++ to MariaDB and MySQL databases.]==])
whatis([==[Homepage: https://downloads.mariadb.org/connector-c/]==])
whatis([==[URL: https://downloads.mariadb.org/connector-c/]==])

local root = "/app/software/MariaDB-connector-c/2.3.7-GCCcore-8.3.0"

conflict("MariaDB-connector-c")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMARIADBMINCONNECTORMINC", root)
setenv("EBVERSIONMARIADBMINCONNECTORMINC", "2.3.7")
setenv("EBDEVELMARIADBMINCONNECTORMINC", pathJoin(root, "logs/MariaDB-connector-c-2.3.7-GCCcore-8.3.0-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/mariadb"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/mariadb"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/mariadb"))
-- Built with EasyBuild version 4.2.0
