help([==[

Description
===========
Universal Command Line Environment for AWS


More information
================
 - Homepage: https://pypi.python.org/pypi/awscli


Included extensions
===================
awscli-1.18.164, botocore-1.19.4, colorama-0.4.3, docutils-0.15.2,
jmespath-0.10.0, rsa-3.4.2, s3transfer-0.3.3, urllib3-1.25.11
]==])

whatis([==[Description: Universal Command Line Environment for AWS]==])
whatis([==[Homepage: https://pypi.python.org/pypi/awscli]==])
whatis([==[URL: https://pypi.python.org/pypi/awscli]==])
whatis([==[Extensions: awscli-1.18.164, botocore-1.19.4, colorama-0.4.3, docutils-0.15.2, jmespath-0.10.0, rsa-3.4.2, s3transfer-0.3.3, urllib3-1.25.11]==])

local root = "/app/software/awscli/1.18.164-GCCcore-8.3.0-Python-3.7.4"

conflict("awscli")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAWSCLI", root)
setenv("EBVERSIONAWSCLI", "1.18.164")
setenv("EBDEVELAWSCLI", pathJoin(root, "logs/awscli-1.18.164-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.0
setenv("EBEXTSLISTAWSCLI", "colorama-0.4.3,s3transfer-0.3.3,rsa-3.4.2,docutils-0.15.2,urllib3-1.25.11,botocore-1.19.4,jmespath-0.10.0,awscli-1.18.164")
