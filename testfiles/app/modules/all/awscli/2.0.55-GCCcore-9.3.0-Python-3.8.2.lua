help([==[

Description
===========
Universal Command Line Environment for AWS


More information
================
 - Homepage: https://pypi.python.org/pypi/awscli


Included extensions
===================
awscli-2.0.55, botocore-1.17.12, colorama-0.4.3, cryptography-2.8,
distro-1.5.0, docutils-0.15.2, jmespath-0.10.0, prompt_toolkit-2.0.10,
ruamel.yaml-0.15.100, s3transfer-0.3.3
]==])

whatis([==[Description: Universal Command Line Environment for AWS]==])
whatis([==[Homepage: https://pypi.python.org/pypi/awscli]==])
whatis([==[URL: https://pypi.python.org/pypi/awscli]==])
whatis([==[Extensions: awscli-2.0.55, botocore-1.17.12, colorama-0.4.3, cryptography-2.8, distro-1.5.0, docutils-0.15.2, jmespath-0.10.0, prompt_toolkit-2.0.10, ruamel.yaml-0.15.100, s3transfer-0.3.3]==])

local root = "/app/software/awscli/2.0.55-GCCcore-9.3.0-Python-3.8.2"

conflict("awscli")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("PyYAML/5.3-GCCcore-9.3.0") ) then
    load("PyYAML/5.3-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAWSCLI", root)
setenv("EBVERSIONAWSCLI", "2.0.55")
setenv("EBDEVELAWSCLI", pathJoin(root, "logs/awscli-2.0.55-GCCcore-9.3.0-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.2
setenv("EBEXTSLISTAWSCLI", "jmespath-0.10.0,botocore-1.17.12,colorama-0.4.3,docutils-0.15.2,cryptography-2.8,s3transfer-0.3.3,ruamel.yaml-0.15.100,prompt_toolkit-2.0.10,distro-1.5.0,awscli-2.0.55")
