help([==[

Description
===========
sysbench is a scriptable multi-threaded benchmark tool based on LuaJIT.
 It is most frequently used for database benchmarks, but can also be used to create arbitrarily complex
 workloads that do not involve a database server.


More information
================
 - Homepage: https://github.com/akopytov/sysbench
]==])

whatis([==[Description: sysbench is a scriptable multi-threaded benchmark tool based on LuaJIT.
 It is most frequently used for database benchmarks, but can also be used to create arbitrarily complex
 workloads that do not involve a database server.]==])
whatis([==[Homepage: https://github.com/akopytov/sysbench]==])
whatis([==[URL: https://github.com/akopytov/sysbench]==])

local root = "/app/software/sysbench/1.0.20-GCC-12.2.0"

conflict("sysbench")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("libtool/2.4.7-GCCcore-12.2.0") ) then
    load("libtool/2.4.7-GCCcore-12.2.0")
end

if not ( isloaded("MariaDB/10.11.2-GCC-12.2.0") ) then
    load("MariaDB/10.11.2-GCC-12.2.0")
end

if not ( isloaded("PostgreSQL/15.2-GCCcore-12.2.0") ) then
    load("PostgreSQL/15.2-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSYSBENCH", root)
setenv("EBVERSIONSYSBENCH", "1.0.20")
setenv("EBDEVELSYSBENCH", pathJoin(root, "logs/sysbench-1.0.20-GCC-12.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
