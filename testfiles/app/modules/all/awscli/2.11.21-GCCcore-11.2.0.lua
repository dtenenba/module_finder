help([==[

Description
===========
Universal Command Line Environment for AWS


More information
================
 - Homepage: https://pypi.python.org/pypi/awscli


Included extensions
===================
awscli-2.11.21, awscrt-0.16.16, botocore-1.29.138, distro-1.8.0,
jmespath-1.0.1, prompt-toolkit-3.0.38, s3transfer-0.6.1
]==])

whatis([==[Description: Universal Command Line Environment for AWS]==])
whatis([==[Homepage: https://pypi.python.org/pypi/awscli]==])
whatis([==[URL: https://pypi.python.org/pypi/awscli]==])
whatis([==[Extensions: awscli-2.11.21, awscrt-0.16.16, botocore-1.29.138, distro-1.8.0, jmespath-1.0.1, prompt-toolkit-3.0.38, s3transfer-0.6.1]==])

local root = "/app/software/awscli/2.11.21-GCCcore-11.2.0"

conflict("awscli")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("PyYAML/5.4.1-GCCcore-11.2.0") ) then
    load("PyYAML/5.4.1-GCCcore-11.2.0")
end

if not ( isloaded("ruamel.yaml/0.17.21-GCCcore-11.2.0") ) then
    load("ruamel.yaml/0.17.21-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAWSCLI", root)
setenv("EBVERSIONAWSCLI", "2.11.21")
setenv("EBDEVELAWSCLI", pathJoin(root, "logs/awscli-2.11.21-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTAWSCLI", "jmespath-1.0.1,botocore-1.29.138,s3transfer-0.6.1,prompt-toolkit-3.0.38,distro-1.8.0,awscrt-0.16.16,awscli-2.11.21")
