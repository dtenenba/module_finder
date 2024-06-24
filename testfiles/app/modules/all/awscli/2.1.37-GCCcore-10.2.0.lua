help([==[

Description
===========
Universal Command Line Environment for AWS


More information
================
 - Homepage: https://pypi.python.org/pypi/awscli


Included extensions
===================
awscli-2.1.37, botocore-1.20.53, cryptography-3.3.2, distro-1.5.0,
docutils-0.15.2, jmespath-0.10.0, prompt_toolkit-2.0.10, ruamel.yaml-0.15.100,
s3transfer-0.3.7, wcwidth-0.1.9
]==])

whatis([==[Description: Universal Command Line Environment for AWS]==])
whatis([==[Homepage: https://pypi.python.org/pypi/awscli]==])
whatis([==[URL: https://pypi.python.org/pypi/awscli]==])
whatis([==[Extensions: awscli-2.1.37, botocore-1.20.53, cryptography-3.3.2, distro-1.5.0, docutils-0.15.2, jmespath-0.10.0, prompt_toolkit-2.0.10, ruamel.yaml-0.15.100, s3transfer-0.3.7, wcwidth-0.1.9]==])

local root = "/app/software/awscli/2.1.37-GCCcore-10.2.0"

conflict("awscli")

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
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAWSCLI", root)
setenv("EBVERSIONAWSCLI", "2.1.37")
setenv("EBDEVELAWSCLI", pathJoin(root, "logs/awscli-2.1.37-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTAWSCLI", "jmespath-0.10.0,botocore-1.20.53,docutils-0.15.2,s3transfer-0.3.7,ruamel.yaml-0.15.100,prompt_toolkit-2.0.10,cryptography-3.3.2,distro-1.5.0,wcwidth-0.1.9,awscli-2.1.37")
