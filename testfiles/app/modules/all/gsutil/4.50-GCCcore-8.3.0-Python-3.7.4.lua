help([==[

Description
===========
gsutil is a Python application that lets you access Cloud Storage from the command line.


More information
================
 - Homepage: https://cloud.google.com/storage/docs/gsutil


Included extensions
===================
argcomplete-1.11.1, boto-2.49.0, contextlib2-0.6.0.post1, crcmod-1.7,
fasteners-0.15, gcs-oauth2-boto-plugin-2.5, google-apitools-0.5.30, google-
reauth-0.1.0, gsutil-4.50, httplib2-0.17.3, importlib-metadata-1.6.0,
monotonic-1.5, oauth2client-4.1.3, pathlib2-2.3.5, pyasn1-modules-0.2.8,
pyOpenSSL-19.1.0, pyu2f-0.1.4, retry_decorator-1.1.1, rsa-4.0, scandir-1.10.0,
SocksiPy-branch-1.01, zipp-3.1.0
]==])

whatis([==[Description: gsutil is a Python application that lets you access Cloud Storage from the command line.]==])
whatis([==[Homepage: https://cloud.google.com/storage/docs/gsutil]==])
whatis([==[URL: https://cloud.google.com/storage/docs/gsutil]==])
whatis([==[Extensions: argcomplete-1.11.1, boto-2.49.0, contextlib2-0.6.0.post1, crcmod-1.7, fasteners-0.15, gcs-oauth2-boto-plugin-2.5, google-apitools-0.5.30, google-reauth-0.1.0, gsutil-4.50, httplib2-0.17.3, importlib-metadata-1.6.0, monotonic-1.5, oauth2client-4.1.3, pathlib2-2.3.5, pyasn1-modules-0.2.8, pyOpenSSL-19.1.0, pyu2f-0.1.4, retry_decorator-1.1.1, rsa-4.0, scandir-1.10.0, SocksiPy-branch-1.01, zipp-3.1.0]==])

local root = "/app/software/gsutil/4.50-GCCcore-8.3.0-Python-3.7.4"

conflict("gsutil")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGSUTIL", root)
setenv("EBVERSIONGSUTIL", "4.50")
setenv("EBDEVELGSUTIL", pathJoin(root, "logs/gsutil-4.50-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.0
setenv("EBEXTSLISTGSUTIL", "zipp-3.1.0,scandir-1.10.0,pathlib2-2.3.5,contextlib2-0.6.0.post1,importlib-metadata-1.6.0,argcomplete-1.11.1,crcmod-1.7,monotonic-1.5,fasteners-0.15,gcs-oauth2-boto-plugin-2.5,httplib2-0.17.3,pyasn1-modules-0.2.8,rsa-4.0,oauth2client-4.1.3,google-apitools-0.5.30,pyu2f-0.1.4,google-reauth-0.1.0,pyOpenSSL-19.1.0,retry_decorator-1.1.1,SocksiPy-branch-1.01,boto-2.49.0,gsutil-4.50")
