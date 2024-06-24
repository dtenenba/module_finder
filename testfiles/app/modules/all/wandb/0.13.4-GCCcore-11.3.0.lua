help([==[

Description
===========
CLI and Python API for Weights and Biases: a tool for visualizing and tracking
your machine learning experiments.


More information
================
 - Homepage: https://www.wandb.com/


Included extensions
===================
charset-normalizer-2.0.12, docker-pycreds-0.4.0, pathtools-0.1.2, promise-2.3,
sentry-sdk-1.8.0, setproctitle-1.3.2, shortuuid-1.0.9, termcolor-1.1.0,
wandb-0.13.4, yaspin-2.1.0
]==])

whatis([==[Description: 
CLI and Python API for Weights and Biases: a tool for visualizing and tracking
your machine learning experiments.]==])
whatis([==[Homepage: https://www.wandb.com/]==])
whatis([==[URL: https://www.wandb.com/]==])
whatis([==[Extensions: charset-normalizer-2.0.12, docker-pycreds-0.4.0, pathtools-0.1.2, promise-2.3, sentry-sdk-1.8.0, setproctitle-1.3.2, shortuuid-1.0.9, termcolor-1.1.0, wandb-0.13.4, yaspin-2.1.0]==])

local root = "/app/software/wandb/0.13.4-GCCcore-11.3.0"

conflict("wandb")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("GitPython/3.1.27-GCCcore-11.3.0") ) then
    load("GitPython/3.1.27-GCCcore-11.3.0")
end

if not ( isloaded("PyYAML/6.0-GCCcore-11.3.0") ) then
    load("PyYAML/6.0-GCCcore-11.3.0")
end

if not ( isloaded("protobuf-python/3.19.4-GCCcore-11.3.0") ) then
    load("protobuf-python/3.19.4-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTWANDB", root)
setenv("EBVERSIONWANDB", "0.13.4")
setenv("EBDEVELWANDB", pathJoin(root, "logs/wandb-0.13.4-GCCcore-11.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.2
setenv("EBEXTSLISTWANDB", "termcolor-1.1.0,yaspin-2.1.0,shortuuid-1.0.9,setproctitle-1.3.2,sentry-sdk-1.8.0,charset-normalizer-2.0.12,promise-2.3,pathtools-0.1.2,docker-pycreds-0.4.0,wandb-0.13.4")
