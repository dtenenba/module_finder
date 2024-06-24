help([==[

Description
===========
The gdc-client provides several convenience functions over the GDC API which provides general
 download/upload via HTTPS.


More information
================
 - Homepage: https://gdc.nci.nih.gov/access-data/gdc-data-transfer-tool


Included extensions
===================
anndata-0.7.1, click-7.1.1, configparser-4.0.2, contextlib2-0.6.0.post1,
Flask-1.1.1, Flask-Caching-1.8.0, Flask-Compress-1.4.0, flask-restful-
swagger-0.20.1, gdc-client-1.5.0, importlib-metadata-1.5.0,
intervaltree-3.0.2, itsdangerous-1.1.0, Jinja2-2.11.1, jsonschema-2.5.1,
lxml-4.5.0, MarkupSafe-1.1.1, natsort-7.0.1, ndg-httpsclient-0.5.1,
packaging-20.3, pathlib2-2.3.5, progressbar-2.5, pyOpenSSL-19.1.0, PyYAML-5.3,
scandir-1.10.0, sortedcontainers-2.1.0, termcolor-1.1.0, Werkzeug-1.0.0,
zipp-3.1.0
]==])

whatis([==[Description: The gdc-client provides several convenience functions over the GDC API which provides general
 download/upload via HTTPS.]==])
whatis([==[Homepage: https://gdc.nci.nih.gov/access-data/gdc-data-transfer-tool]==])
whatis([==[URL: https://gdc.nci.nih.gov/access-data/gdc-data-transfer-tool]==])
whatis([==[Extensions: anndata-0.7.1, click-7.1.1, configparser-4.0.2, contextlib2-0.6.0.post1, Flask-1.1.1, Flask-Caching-1.8.0, Flask-Compress-1.4.0, flask-restful-swagger-0.20.1, gdc-client-1.5.0, importlib-metadata-1.5.0, intervaltree-3.0.2, itsdangerous-1.1.0, Jinja2-2.11.1, jsonschema-2.5.1, lxml-4.5.0, MarkupSafe-1.1.1, natsort-7.0.1, ndg-httpsclient-0.5.1, packaging-20.3, pathlib2-2.3.5, progressbar-2.5, pyOpenSSL-19.1.0, PyYAML-5.3, scandir-1.10.0, sortedcontainers-2.1.0, termcolor-1.1.0, Werkzeug-1.0.0, zipp-3.1.0]==])

local root = "/app/software/gdc-client/1.5.0-foss-2019b-Python-3.7.4"

conflict("gdc-client")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("libxslt/1.1.34-GCCcore-8.3.0") ) then
    load("libxslt/1.1.34-GCCcore-8.3.0")
end

if not ( isloaded("libyaml/0.2.2-GCCcore-8.3.0") ) then
    load("libyaml/0.2.2-GCCcore-8.3.0")
end

if not ( isloaded("h5py/2.10.0-foss-2019b-Python-3.7.4") ) then
    load("h5py/2.10.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("scikit-learn/0.21.3-foss-2019b-Python-3.7.4") ) then
    load("scikit-learn/0.21.3-foss-2019b-Python-3.7.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGDCMINCLIENT", root)
setenv("EBVERSIONGDCMINCLIENT", "1.5.0")
setenv("EBDEVELGDCMINCLIENT", pathJoin(root, "logs/gdc-client-1.5.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.0
setenv("EBEXTSLISTGDCMINCLIENT", "configparser-4.0.2,pyOpenSSL-19.1.0,ndg-httpsclient-0.5.1,lxml-4.5.0,PyYAML-5.3,jsonschema-2.5.1,termcolor-1.1.0,sortedcontainers-2.1.0,intervaltree-3.0.2,progressbar-2.5,natsort-7.0.1,packaging-20.3,zipp-3.1.0,scandir-1.10.0,pathlib2-2.3.5,contextlib2-0.6.0.post1,importlib-metadata-1.5.0,anndata-0.7.1,click-7.1.1,Werkzeug-1.0.0,MarkupSafe-1.1.1,Jinja2-2.11.1,itsdangerous-1.1.0,Flask-1.1.1,Flask-Caching-1.8.0,Flask-Compress-1.4.0,flask-restful-swagger-0.20.1,gdc-client-1.5.0")
