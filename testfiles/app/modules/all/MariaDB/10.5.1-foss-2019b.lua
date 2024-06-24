help([==[

Description
===========
MariaDB is an enhanced, drop-in replacement for MySQL.
Included engines: myISAM, Aria, InnoDB, RocksDB, TokuDB, OQGraph, Mroonga.


More information
================
 - Homepage: https://mariadb.org/
]==])

whatis([==[Description: MariaDB is an enhanced, drop-in replacement for MySQL.
Included engines: myISAM, Aria, InnoDB, RocksDB, TokuDB, OQGraph, Mroonga.]==])
whatis([==[Homepage: https://mariadb.org/]==])
whatis([==[URL: https://mariadb.org/]==])

local root = "/app/software/MariaDB/10.5.1-foss-2019b"

conflict("MariaDB")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("LZO/2.10-GCCcore-8.3.0") ) then
    load("LZO/2.10-GCCcore-8.3.0")
end

if not ( isloaded("lz4/1.9.2-GCCcore-8.3.0") ) then
    load("lz4/1.9.2-GCCcore-8.3.0")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("jemalloc/5.2.1-GCCcore-8.3.0") ) then
    load("jemalloc/5.2.1-GCCcore-8.3.0")
end

if not ( isloaded("snappy/1.1.8-GCCcore-8.3.0") ) then
    load("snappy/1.1.8-GCCcore-8.3.0")
end

if not ( isloaded("libxml2/2.9.9-GCCcore-8.3.0") ) then
    load("libxml2/2.9.9-GCCcore-8.3.0")
end

if not ( isloaded("Boost/1.71.0-gompi-2019b") ) then
    load("Boost/1.71.0-gompi-2019b")
end

if not ( isloaded("Judy/1.0.5-GCCcore-8.3.0") ) then
    load("Judy/1.0.5-GCCcore-8.3.0")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMARIADB", root)
setenv("EBVERSIONMARIADB", "10.5.1")
setenv("EBDEVELMARIADB", pathJoin(root, "logs/MariaDB-10.5.1-foss-2019b-easybuild-devel"))

setenv("MALLOC_CONF", "thp:never")
prepend_path("PATH", pathJoin(root, "scripts"))
-- Built with EasyBuild version 4.2.0
