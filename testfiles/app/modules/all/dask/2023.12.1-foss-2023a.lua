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
dask-2023.12.1, dask-jobqueue-0.8.2, dask-mpi-2022.4.0, distributed-2023.12.1,
docrep-0.3.2, HeapDict-1.0.1, locket-1.0.0, partd-1.4.1, tblib-3.0.0,
toolz-0.12.0, zict-3.0.0
]==])

whatis([==[Description: Dask natively scales Python. Dask provides advanced parallelism for analytics, enabling performance
 at scale for the tools you love.]==])
whatis([==[Homepage: https://dask.org/]==])
whatis([==[URL: https://dask.org/]==])
whatis([==[Extensions: dask-2023.12.1, dask-jobqueue-0.8.2, dask-mpi-2022.4.0, distributed-2023.12.1, docrep-0.3.2, HeapDict-1.0.1, locket-1.0.0, partd-1.4.1, tblib-3.0.0, toolz-0.12.0, zict-3.0.0]==])

local root = "/app/software/dask/2023.12.1-foss-2023a"

conflict("dask")

if not ( isloaded("foss/2023a") ) then
    load("foss/2023a")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.3.0") ) then
    load("PyYAML/6.0-GCCcore-12.3.0")
end

if not ( isloaded("SciPy-bundle/2023.07-gfbf-2023a") ) then
    load("SciPy-bundle/2023.07-gfbf-2023a")
end

if not ( isloaded("bokeh/3.2.2-foss-2023a") ) then
    load("bokeh/3.2.2-foss-2023a")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDASK", root)
setenv("EBVERSIONDASK", "2023.12.1")
setenv("EBDEVELDASK", pathJoin(root, "logs/dask-2023.12.1-foss-2023a-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTDASK", "toolz-0.12.0,locket-1.0.0,partd-1.4.1,HeapDict-1.0.1,zict-3.0.0,tblib-3.0.0,dask-2023.12.1,distributed-2023.12.1,dask-mpi-2022.4.0,docrep-0.3.2,dask-jobqueue-0.8.2")
