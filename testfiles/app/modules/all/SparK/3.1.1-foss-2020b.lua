help([==[

Description
===========
Spark is Hadoop MapReduce done in memory


More information
================
 - Homepage: https://spark.apache.org


Included extensions
===================
py4j-0.10.9.2
]==])

whatis([==[Description: Spark is Hadoop MapReduce done in memory]==])
whatis([==[Homepage: https://spark.apache.org]==])
whatis([==[URL: https://spark.apache.org]==])
whatis([==[Extensions: py4j-0.10.9.2]==])

local root = "/app/software/Spark/3.1.1-foss-2020b"

conflict("Spark")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("Java/11") ) then
    load("Java/11")
end

if not ( isloaded("Arrow/0.17.1-foss-2020b") ) then
    load("Arrow/0.17.1-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSPARK", root)
setenv("EBVERSIONSPARK", "3.1.1")
setenv("EBDEVELSPARK", pathJoin(root, "logs/Spark-3.1.1-foss-2020b-easybuild-devel"))

setenv("SPARK_HOME", "/app/software/Spark/3.1.1-foss-2020b")
prepend_path("PYTHONPATH", pathJoin(root, "python"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTSPARK", "py4j-0.10.9.2")
