help([==[

Description
===========
Universal Command Line Environment for AWS. Includes package
awscli-plugin-endpiont


More information
================
 - Homepage: https://pypi.python.org/pypi/awscli


Included extensions
===================
awscli-1.18.23, awscli-plugin-endpoint-0.3, boto3-1.12.23, botocore-1.15.23,
colorama-0.4.3, docutils-0.15, jmespath-0.9.5, PyYAML-5.3, rsa-3.4.2,
s3transfer-0.3.3
]==])

whatis([==[Description: Universal Command Line Environment for AWS. Includes package
awscli-plugin-endpiont]==])
whatis([==[Homepage: https://pypi.python.org/pypi/awscli]==])
whatis([==[URL: https://pypi.python.org/pypi/awscli]==])
whatis([==[Extensions: awscli-1.18.23, awscli-plugin-endpoint-0.3, boto3-1.12.23, botocore-1.15.23, colorama-0.4.3, docutils-0.15, jmespath-0.9.5, PyYAML-5.3, rsa-3.4.2, s3transfer-0.3.3]==])

local root = "/app/software/awscli/1.18.23-foss-2019b-Python-3.7.4"

conflict("awscli")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTAWSCLI", root)
setenv("EBVERSIONAWSCLI", "1.18.23")
setenv("EBDEVELAWSCLI", pathJoin(root, "logs/awscli-1.18.23-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTAWSCLI", "rsa-3.4.2,s3transfer-0.3.3,PyYAML-5.3,docutils-0.15,colorama-0.4.3,jmespath-0.9.5,botocore-1.15.23,boto3-1.12.23,awscli-plugin-endpoint-0.3,awscli-1.18.23")
