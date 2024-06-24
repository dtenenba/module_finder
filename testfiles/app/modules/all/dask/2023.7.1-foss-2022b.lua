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
dask-2023.7.1, dask-jobqueue-0.8.2, dask-mpi-2022.4.0, distributed-2023.7.1,
docrep-0.3.2, HeapDict-1.0.1, locket-1.0.0, partd-1.4.0, tblib-2.0.0,
toolz-0.12.0, versioneer-0.29, zict-3.0.0
]==])

whatis([==[Description: Dask natively scales Python. Dask provides advanced parallelism for analytics, enabling performance
 at scale for the tools you love.]==])
whatis([==[Homepage: https://dask.org/]==])
whatis([==[URL: https://dask.org/]==])
whatis([==[Extensions: dask-2023.7.1, dask-jobqueue-0.8.2, dask-mpi-2022.4.0, distributed-2023.7.1, docrep-0.3.2, HeapDict-1.0.1, locket-1.0.0, partd-1.4.0, tblib-2.0.0, toolz-0.12.0, versioneer-0.29, zict-3.0.0]==])

local root = "/app/software/dask/2023.7.1-foss-2022b"

conflict("dask")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.2.0") ) then
    load("PyYAML/6.0-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("bokeh/3.2.1-foss-2022b") ) then
    load("bokeh/3.2.1-foss-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDASK", root)
setenv("EBVERSIONDASK", "2023.7.1")
setenv("EBDEVELDASK", pathJoin(root, "logs/dask-2023.7.1-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTDASK", "toolz-0.12.0,locket-1.0.0,partd-1.4.0,HeapDict-1.0.1,zict-3.0.0,tblib-2.0.0,versioneer-0.29,dask-2023.7.1,distributed-2023.7.1,dask-mpi-2022.4.0,docrep-0.3.2,dask-jobqueue-0.8.2")
