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
cloudpickle-1.4.1, contextvars-2.4, dask-2.18.1, dask-jobqueue-0.7.1, dask-
mpi-2.0.0, distributed-2.18.0, docrep-0.2.7, fsspec-0.7.4, HeapDict-1.0.1,
immutables-0.14, locket-0.2.0, msgpack-1.0.0, partd-1.1.0,
sortedcontainers-2.2.2, tblib-1.6.0, toolz-0.10.0, zict-2.0.0
]==])

whatis([==[Description: Dask natively scales Python. Dask provides advanced parallelism for analytics, enabling performance
 at scale for the tools you love.]==])
whatis([==[Homepage: https://dask.org/]==])
whatis([==[URL: https://dask.org/]==])
whatis([==[Extensions: cloudpickle-1.4.1, contextvars-2.4, dask-2.18.1, dask-jobqueue-0.7.1, dask-mpi-2.0.0, distributed-2.18.0, docrep-0.2.7, fsspec-0.7.4, HeapDict-1.0.1, immutables-0.14, locket-0.2.0, msgpack-1.0.0, partd-1.1.0, sortedcontainers-2.2.2, tblib-1.6.0, toolz-0.10.0, zict-2.0.0]==])

local root = "/app/software/dask/2.18.1-foss-2020a-Python-3.8.2"

conflict("dask")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("PyYAML/5.3-GCCcore-9.3.0") ) then
    load("PyYAML/5.3-GCCcore-9.3.0")
end

if not ( isloaded("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2")
end

if not ( isloaded("bokeh/2.0.2-foss-2020a-Python-3.8.2") ) then
    load("bokeh/2.0.2-foss-2020a-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDASK", root)
setenv("EBVERSIONDASK", "2.18.1")
setenv("EBDEVELDASK", pathJoin(root, "logs/dask-2.18.1-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTDASK", "fsspec-0.7.4,toolz-0.10.0,locket-0.2.0,partd-1.1.0,HeapDict-1.0.1,zict-2.0.0,tblib-1.6.0,sortedcontainers-2.2.2,msgpack-1.0.0,cloudpickle-1.4.1,dask-2.18.1,distributed-2.18.0,dask-mpi-2.0.0,immutables-0.14,contextvars-2.4,docrep-0.2.7,dask-jobqueue-0.7.1")
