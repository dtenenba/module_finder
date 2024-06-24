help([==[

Description
===========
YACS was created as a lightweight library to define and
manage system configurations, such as those commonly found in software
designed for scientific experimentation. These "configurations"
typically cover concepts like hyperparameters used in training a machine
learning model or configurable model hyperparameters, such as the depth
of a convolutional neural network.


More information
================
 - Homepage: https://github.com/rbgirshick/yacs
]==])

whatis([==[Description: YACS was created as a lightweight library to define and
manage system configurations, such as those commonly found in software
designed for scientific experimentation. These "configurations"
typically cover concepts like hyperparameters used in training a machine
learning model or configurable model hyperparameters, such as the depth
of a convolutional neural network.]==])
whatis([==[Homepage: https://github.com/rbgirshick/yacs]==])
whatis([==[URL: https://github.com/rbgirshick/yacs]==])

local root = "/app/software/YACS/0.1.8-GCCcore-10.2.0"

conflict("YACS")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTYACS", root)
setenv("EBVERSIONYACS", "0.1.8")
setenv("EBDEVELYACS", pathJoin(root, "logs/YACS-0.1.8-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.2
