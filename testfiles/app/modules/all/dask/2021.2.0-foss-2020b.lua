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
cloudpickle-1.6.0, dask-2021.2.0, dask-jobqueue-0.7.2, dask-mpi-2.21.0,
distributed-2021.2.0, docrep-0.3.2, fsspec-0.8.7, HeapDict-1.0.1,
locket-0.2.1, msgpack-1.0.2, partd-1.1.0, tblib-1.7.0, toolz-0.11.1,
zict-2.0.0
]==])

whatis([==[Description: Dask natively scales Python. Dask provides advanced parallelism for analytics, enabling performance
 at scale for the tools you love.]==])
whatis([==[Homepage: https://dask.org/]==])
whatis([==[URL: https://dask.org/]==])
whatis([==[Extensions: cloudpickle-1.6.0, dask-2021.2.0, dask-jobqueue-0.7.2, dask-mpi-2.21.0, distributed-2021.2.0, docrep-0.3.2, fsspec-0.8.7, HeapDict-1.0.1, locket-0.2.1, msgpack-1.0.2, partd-1.1.0, tblib-1.7.0, toolz-0.11.1, zict-2.0.0]==])

local root = "/app/software/dask/2021.2.0-foss-2020b"

conflict("dask")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("bokeh/2.2.3-foss-2020b") ) then
    load("bokeh/2.2.3-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDASK", root)
setenv("EBVERSIONDASK", "2021.2.0")
setenv("EBDEVELDASK", pathJoin(root, "logs/dask-2021.2.0-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTDASK", "fsspec-0.8.7,toolz-0.11.1,locket-0.2.1,partd-1.1.0,HeapDict-1.0.1,zict-2.0.0,tblib-1.7.0,msgpack-1.0.2,cloudpickle-1.6.0,dask-2021.2.0,distributed-2021.2.0,dask-mpi-2.21.0,docrep-0.3.2,dask-jobqueue-0.7.2")
