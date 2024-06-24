help([==[

Description
===========
The gdc-client provides several convenience functions over
 the GDC API which provides general download/upload via HTTPS.


More information
================
 - Homepage: https://gdc.nci.nih.gov/access-data/gdc-data-transfer-tool


Included extensions
===================
cryptography-2.8, gdc-client-1.6.0, idna-2.8, intervaltree-3.0.2,
jsonschema-2.6.0, lxml-4.4.2, ndg-httpsclient-0.5.0, progressbar2-3.43.1,
pyasn1-0.4.3, pyOpenSSL-18.0.0, python-utils-2.5.6, PyYAML-3.13,
requests-2.22.0, termcolor-1.1.0
]==])

whatis([==[Description: The gdc-client provides several convenience functions over
 the GDC API which provides general download/upload via HTTPS.]==])
whatis([==[Homepage: https://gdc.nci.nih.gov/access-data/gdc-data-transfer-tool]==])
whatis([==[URL: https://gdc.nci.nih.gov/access-data/gdc-data-transfer-tool]==])
whatis([==[Extensions: cryptography-2.8, gdc-client-1.6.0, idna-2.8, intervaltree-3.0.2, jsonschema-2.6.0, lxml-4.4.2, ndg-httpsclient-0.5.0, progressbar2-3.43.1, pyasn1-0.4.3, pyOpenSSL-18.0.0, python-utils-2.5.6, PyYAML-3.13, requests-2.22.0, termcolor-1.1.0]==])

local root = "/app/software/gdc-client/1.6.0-GCCcore-10.2.0"

conflict("gdc-client")

if not ( isloaded("GCCcore/10.2.0") ) then
    load("GCCcore/10.2.0")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-10.2.0") ) then
    load("libxslt/1.1.34-GCCcore-10.2.0")
end

if not ( isloaded("libyaml/0.2.5-GCCcore-10.2.0") ) then
    load("libyaml/0.2.5-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGDCMINCLIENT", root)
setenv("EBVERSIONGDCMINCLIENT", "1.6.0")
setenv("EBDEVELGDCMINCLIENT", pathJoin(root, "logs/gdc-client-1.6.0-GCCcore-10.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTGDCMINCLIENT", "cryptography-2.8,jsonschema-2.6.0,lxml-4.4.2,ndg-httpsclient-0.5.0,pyasn1-0.4.3,pyOpenSSL-18.0.0,PyYAML-3.13,intervaltree-3.0.2,termcolor-1.1.0,idna-2.8,requests-2.22.0,python-utils-2.5.6,progressbar2-3.43.1,gdc-client-1.6.0")
