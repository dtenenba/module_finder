help([==[

Description
===========
A simple packaging tool for simple packages.


More information
================
 - Homepage: https://github.com/pypa/flit


Included extensions
===================
certifi-2023.5.7, charset-normalizer-3.1.0, docutils-0.20.1, flit-3.9.0,
flit_scm-1.7.0, idna-3.4, packaging-23.1, requests-2.31.0,
setuptools_scm-7.1.0, tomli_w-1.0.0, typing_extensions-4.6.3, urllib3-1.26.16
]==])

whatis([==[Description: A simple packaging tool for simple packages.]==])
whatis([==[Homepage: https://github.com/pypa/flit]==])
whatis([==[URL: https://github.com/pypa/flit]==])
whatis([==[Extensions: certifi-2023.5.7, charset-normalizer-3.1.0, docutils-0.20.1, flit-3.9.0, flit_scm-1.7.0, idna-3.4, packaging-23.1, requests-2.31.0, setuptools_scm-7.1.0, tomli_w-1.0.0, typing_extensions-4.6.3, urllib3-1.26.16]==])

local root = "/app/software/flit/3.9.0-GCCcore-12.3.0"

conflict("flit")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLIT", root)
setenv("EBVERSIONFLIT", "3.9.0")
setenv("EBDEVELFLIT", pathJoin(root, "logs/flit-3.9.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTFLIT", "idna-3.4,certifi-2023.5.7,urllib3-1.26.16,charset-normalizer-3.1.0,packaging-23.1,setuptools_scm-7.1.0,typing_extensions-4.6.3,flit_scm-1.7.0,requests-2.31.0,docutils-0.20.1,tomli_w-1.0.0,flit-3.9.0")
