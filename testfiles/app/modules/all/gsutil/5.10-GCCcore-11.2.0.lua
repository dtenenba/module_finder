help([==[

Description
===========
gsutil is a Python application that lets you access Cloud Storage from the command line.


More information
================
 - Homepage: https://cloud.google.com/storage/docs/gsutil


Included extensions
===================
argcomplete-2.0.0, boto-2.49.0, cachetools-5.1.0, cffi-1.15.0,
contextlib2-21.6.0, crcmod-1.7, cryptography-37.0.2, fasteners-0.17.3, gcs-
oauth2-boto-plugin-3.0, google-apitools-0.5.32, google-auth-2.6.6, google-
reauth-0.1.1, gsutil-5.10, httplib2-0.20.4, importlib-metadata-4.11.3,
monotonic-1.6, oauth2client-4.1.3, pyasn1-modules-0.2.8, pyOpenSSL-22.0.0,
pyu2f-0.1.5, retry_decorator-1.1.1, rsa-4.7.2, SocksiPy-branch-1.01, typing-
extensions-4.2.0
]==])

whatis([==[Description: gsutil is a Python application that lets you access Cloud Storage from the command line.]==])
whatis([==[Homepage: https://cloud.google.com/storage/docs/gsutil]==])
whatis([==[URL: https://cloud.google.com/storage/docs/gsutil]==])
whatis([==[Extensions: argcomplete-2.0.0, boto-2.49.0, cachetools-5.1.0, cffi-1.15.0, contextlib2-21.6.0, crcmod-1.7, cryptography-37.0.2, fasteners-0.17.3, gcs-oauth2-boto-plugin-3.0, google-apitools-0.5.32, google-auth-2.6.6, google-reauth-0.1.1, gsutil-5.10, httplib2-0.20.4, importlib-metadata-4.11.3, monotonic-1.6, oauth2client-4.1.3, pyasn1-modules-0.2.8, pyOpenSSL-22.0.0, pyu2f-0.1.5, retry_decorator-1.1.1, rsa-4.7.2, SocksiPy-branch-1.01, typing-extensions-4.2.0]==])

local root = "/app/software/gsutil/5.10-GCCcore-11.2.0"

conflict("gsutil")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGSUTIL", root)
setenv("EBVERSIONGSUTIL", "5.10")
setenv("EBDEVELGSUTIL", pathJoin(root, "logs/gsutil-5.10-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTGSUTIL", "contextlib2-21.6.0,typing-extensions-4.2.0,importlib-metadata-4.11.3,argcomplete-2.0.0,crcmod-1.7,monotonic-1.6,fasteners-0.17.3,rsa-4.7.2,gcs-oauth2-boto-plugin-3.0,httplib2-0.20.4,pyasn1-modules-0.2.8,oauth2client-4.1.3,google-apitools-0.5.32,pyu2f-0.1.5,cachetools-5.1.0,google-auth-2.6.6,google-reauth-0.1.1,cffi-1.15.0,cryptography-37.0.2,pyOpenSSL-22.0.0,retry_decorator-1.1.1,SocksiPy-branch-1.01,boto-2.49.0,gsutil-5.10")
