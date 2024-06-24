help([==[

Description
===========
RFdiffusion is an open source method for structure generation, with or without conditional information 
(a motif, target etc). It can perform a whole range of protein design challenges as we have outlined 
in the RFdiffusion paper.


More information
================
 - Homepage: https://github.com/RosettaCommons/RFdiffusion


Included extensions
===================
decorator-5.1.1, dllogger-1.0.0, pynvml-11.0.0, RFdiffusion-1.1.0,
se3-transformer-1.1.0
]==])

whatis([==[Description: 
RFdiffusion is an open source method for structure generation, with or without conditional information 
(a motif, target etc). It can perform a whole range of protein design challenges as we have outlined 
in the RFdiffusion paper.
]==])
whatis([==[Homepage: https://github.com/RosettaCommons/RFdiffusion]==])
whatis([==[URL: https://github.com/RosettaCommons/RFdiffusion]==])
whatis([==[Extensions: decorator-5.1.1, dllogger-1.0.0, pynvml-11.0.0, RFdiffusion-1.1.0, se3-transformer-1.1.0]==])

local root = "/app/software/RFdiffusion/1.1.0-foss-2022a-CUDA-11.7.0"

conflict("RFdiffusion")

if not ( isloaded("foss/2022a") ) then
    load("foss/2022a")
end

if not ( isloaded("CUDA/11.7.0") ) then
    load("CUDA/11.7.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("SciPy-bundle/2022.05-foss-2022a") ) then
    load("SciPy-bundle/2022.05-foss-2022a")
end

if not ( isloaded("e3nn/0.3.3-foss-2022a-CUDA-11.7.0") ) then
    load("e3nn/0.3.3-foss-2022a-CUDA-11.7.0")
end

if not ( isloaded("wandb/0.13.4-GCCcore-11.3.0") ) then
    load("wandb/0.13.4-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTRFDIFFUSION", root)
setenv("EBVERSIONRFDIFFUSION", "1.1.0")
setenv("EBDEVELRFDIFFUSION", pathJoin(root, "logs/RFdiffusion-1.1.0-foss-2022a-CUDA-11.7.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.2
setenv("EBEXTSLISTRFDIFFUSION", "pynvml-11.0.0,dllogger-1.0.0,decorator-5.1.1,se3-transformer-1.1.0,RFdiffusion-1.1.0")
