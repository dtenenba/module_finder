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
cloudpickle-2.0.0, dask-2022.1.0, dask-jobqueue-0.7.3, dask-mpi-2021.11.0,
distributed-2022.1.0, docrep-0.3.2, HeapDict-1.0.1, locket-0.2.1, partd-1.2.0,
tblib-1.7.0, toolz-0.11.2, zict-2.0.0
]==])

whatis([==[Description: Dask natively scales Python. Dask provides advanced parallelism for analytics, enabling performance
 at scale for the tools you love.]==])
whatis([==[Homepage: https://dask.org/]==])
whatis([==[URL: https://dask.org/]==])
whatis([==[Extensions: cloudpickle-2.0.0, dask-2022.1.0, dask-jobqueue-0.7.3, dask-mpi-2021.11.0, distributed-2022.1.0, docrep-0.3.2, HeapDict-1.0.1, locket-0.2.1, partd-1.2.0, tblib-1.7.0, toolz-0.11.2, zict-2.0.0]==])

local root = "/app/software/dask/2022.1.0-foss-2021b"

conflict("dask")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("PyYAML/5.4.1-GCCcore-11.2.0") ) then
    load("PyYAML/5.4.1-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

if not ( isloaded("bokeh/2.4.2-foss-2021b") ) then
    load("bokeh/2.4.2-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDASK", root)
setenv("EBVERSIONDASK", "2022.1.0")
setenv("EBDEVELDASK", pathJoin(root, "logs/dask-2022.1.0-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTDASK", "toolz-0.11.2,locket-0.2.1,partd-1.2.0,HeapDict-1.0.1,zict-2.0.0,tblib-1.7.0,cloudpickle-2.0.0,dask-2022.1.0,distributed-2022.1.0,dask-mpi-2021.11.0,docrep-0.3.2,dask-jobqueue-0.7.3")
