help([==[

Description
===========
Dask natively scales Python. Dask provides advanced parallelism for analytics, enabling performance
 at scale for the tools you love.


More information
================
 - Homepage: https://dask.org/


Included extensions
===================
cloudpickle-1.3.0, dask-2.8.0, dask-jobqueue-0.7.1, dask-mpi-2.0.0,
distributed-2.3.0, docrep-0.2.7, fsspec-0.7.2, HeapDict-1.0.1, locket-0.2.0,
msgpack-1.0.0, partd-1.1.0, sortedcontainers-2.1.0, tblib-1.6.0, toolz-0.10.0,
zict-2.0.0
]==])

whatis([==[Description: Dask natively scales Python. Dask provides advanced parallelism for analytics, enabling performance
 at scale for the tools you love.]==])
whatis([==[Homepage: https://dask.org/]==])
whatis([==[URL: https://dask.org/]==])
whatis([==[Extensions: cloudpickle-1.3.0, dask-2.8.0, dask-jobqueue-0.7.1, dask-mpi-2.0.0, distributed-2.3.0, docrep-0.2.7, fsspec-0.7.2, HeapDict-1.0.1, locket-0.2.0, msgpack-1.0.0, partd-1.1.0, sortedcontainers-2.1.0, tblib-1.6.0, toolz-0.10.0, zict-2.0.0]==])

local root = "/app/software/dask/2.8.0-foss-2019b-Python-3.7.4"

conflict("dask")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("bokeh/2.0.1-foss-2019b-Python-3.7.4") ) then
    load("bokeh/2.0.1-foss-2019b-Python-3.7.4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDASK", root)
setenv("EBVERSIONDASK", "2.8.0")
setenv("EBDEVELDASK", pathJoin(root, "logs/dask-2.8.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTDASK", "fsspec-0.7.2,toolz-0.10.0,locket-0.2.0,partd-1.1.0,HeapDict-1.0.1,zict-2.0.0,tblib-1.6.0,sortedcontainers-2.1.0,msgpack-1.0.0,cloudpickle-1.3.0,dask-2.8.0,distributed-2.3.0,dask-mpi-2.0.0,docrep-0.2.7,dask-jobqueue-0.7.1")
