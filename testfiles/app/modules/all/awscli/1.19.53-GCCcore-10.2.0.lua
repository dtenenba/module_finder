help([==[

Description
===========
Universal Command Line Environment for AWS


More information
================
 - Homepage: https://pypi.python.org/pypi/awscli


Included extensions
===================
awscli-1.19.53, botocore-1.20.53, docutils-0.15, jmespath-0.10.0, rsa-4.4.1,
s3transfer-0.3.3
]==])

whatis([==[Description: Universal Command Line Environment for AWS]==])
whatis([==[Homepage: https://pypi.python.org/pypi/awscli]==])
whatis([==[URL: https://pypi.python.org/pypi/awscli]==])
whatis([==[Extensions: awscli-1.19.53, botocore-1.20.53, docutils-0.15, jmespath-0.10.0, rsa-4.4.1, s3transfer-0.3.3]==])

local root = "/app/software/awscli/1.19.53-GCCcore-10.2.0"

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
setenv("EBVERSIONAWSCLI", "1.19.53")
setenv("EBDEVELAWSCLI", pathJoin(root, "logs/awscli-1.19.53-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTAWSCLI", "s3transfer-0.3.3,rsa-4.4.1,docutils-0.15,botocore-1.20.53,jmespath-0.10.0,awscli-1.19.53")
