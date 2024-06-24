help([==[

Description
===========
Boto3 is the Amazon Web Services (AWS) Software Development Kit
(SDK) for Python, which allows Python developers to write software that makes
use of services like Amazon S3 and Amazon EC2.


More information
================
 - Homepage: https://github.com/boto/boto3


Included extensions
===================
boto3-1.20.13, botocore-1.23.13, jmespath-0.10.0, s3transfer-0.5.0
]==])

whatis([==[Description: Boto3 is the Amazon Web Services (AWS) Software Development Kit
(SDK) for Python, which allows Python developers to write software that makes
use of services like Amazon S3 and Amazon EC2.]==])
whatis([==[Homepage: https://github.com/boto/boto3]==])
whatis([==[URL: https://github.com/boto/boto3]==])
whatis([==[Extensions: boto3-1.20.13, botocore-1.23.13, jmespath-0.10.0, s3transfer-0.5.0]==])

local root = "/app/software/boto3/1.20.13-GCCcore-11.2.0"

conflict("boto3")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBOTO3", root)
setenv("EBVERSIONBOTO3", "1.20.13")
setenv("EBDEVELBOTO3", pathJoin(root, "logs/boto3-1.20.13-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
setenv("EBEXTSLISTBOTO3", "botocore-1.23.13,jmespath-0.10.0,s3transfer-0.5.0,boto3-1.20.13")
