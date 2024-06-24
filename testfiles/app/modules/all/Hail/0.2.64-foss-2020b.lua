help([==[

Description
===========
Hail is an open-source, general-purpose, Python-based data analysis tool with
 additional data types and methods for working with genomic data.


More information
================
 - Homepage: https://hail.is/


Included extensions
===================
aiohttp-3.7.4, aiohttp-session-2.7.0, async-timeout-3.0.1, asyncinit-0.2.4,
attrs-20.3.0, bokeh-1.4.0, cachetools-4.2.1, crcmod-1.7, Deprecated-1.2.12,
dill-0.3.3, fsspec-0.9.0, gcsfs-0.7.2, google-api-core-1.26.3, google-
auth-1.28.1, google-auth-oauthlib-0.4.4, google-cloud-core-1.6.0, google-
cloud-storage-1.25.0, google-crc32c-1.1.2, google-resumable-media-0.5.0,
googleapis-common-protos-1.53.0, Hail-0.2.64, humanize-1.0.0,
hurry.filesize-0.9, idna-2.8, idna-ssl-1.1.0, multidict-5.1.0,
nest_asyncio-1.5.1, oauthlib-3.1.0, parsimonious-0.8.1, Pillow-7.2.0,
protobuf-3.15.8, pyasn1-modules-0.2.8, PyJWT-2.0.1, python-json-logger-0.1.11,
requests-2.22.0, requests-oauthlib-1.3.0, rsa-4.7.2, tabulate-0.8.3,
tornado-6.1, tqdm-4.42.1, typing_extensions-3.7.4.3, wrapt-1.12.1, yarl-1.6.3
]==])

whatis([==[Description: Hail is an open-source, general-purpose, Python-based data analysis tool with
 additional data types and methods for working with genomic data.]==])
whatis([==[Homepage: https://hail.is/]==])
whatis([==[URL: https://hail.is/]==])
whatis([==[Extensions: aiohttp-3.7.4, aiohttp-session-2.7.0, async-timeout-3.0.1, asyncinit-0.2.4, attrs-20.3.0, bokeh-1.4.0, cachetools-4.2.1, crcmod-1.7, Deprecated-1.2.12, dill-0.3.3, fsspec-0.9.0, gcsfs-0.7.2, google-api-core-1.26.3, google-auth-1.28.1, google-auth-oauthlib-0.4.4, google-cloud-core-1.6.0, google-cloud-storage-1.25.0, google-crc32c-1.1.2, google-resumable-media-0.5.0, googleapis-common-protos-1.53.0, Hail-0.2.64, humanize-1.0.0, hurry.filesize-0.9, idna-2.8, idna-ssl-1.1.0, multidict-5.1.0, nest_asyncio-1.5.1, oauthlib-3.1.0, parsimonious-0.8.1, Pillow-7.2.0, protobuf-3.15.8, pyasn1-modules-0.2.8, PyJWT-2.0.1, python-json-logger-0.1.11, requests-2.22.0, requests-oauthlib-1.3.0, rsa-4.7.2, tabulate-0.8.3, tornado-6.1, tqdm-4.42.1, typing_extensions-3.7.4.3, wrapt-1.12.1, yarl-1.6.3]==])

local root = "/app/software/Hail/0.2.64-foss-2020b"

conflict("Hail")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("LLVM/10.0.1-GCCcore-10.2.0") ) then
    load("LLVM/10.0.1-GCCcore-10.2.0")
end

if not ( isloaded("libjpeg-turbo/2.0.5-GCCcore-10.2.0") ) then
    load("libjpeg-turbo/2.0.5-GCCcore-10.2.0")
end

if not ( isloaded("Spark/3.1.1-foss-2020b") ) then
    load("Spark/3.1.1-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHAIL", root)
setenv("EBVERSIONHAIL", "0.2.64")
setenv("EBDEVELHAIL", pathJoin(root, "logs/Hail-0.2.64-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTHAIL", "tabulate-0.8.3,python-json-logger-0.1.11,attrs-20.3.0,multidict-5.1.0,async-timeout-3.0.1,typing_extensions-3.7.4.3,yarl-1.6.3,idna-2.8,idna-ssl-1.1.0,aiohttp-3.7.4,aiohttp-session-2.7.0,asyncinit-0.2.4,Pillow-7.2.0,tornado-6.1,bokeh-1.4.0,wrapt-1.12.1,Deprecated-1.2.12,dill-0.3.3,cachetools-4.2.1,pyasn1-modules-0.2.8,rsa-4.7.2,google-auth-1.28.1,oauthlib-3.1.0,requests-2.22.0,requests-oauthlib-1.3.0,google-auth-oauthlib-0.4.4,fsspec-0.9.0,gcsfs-0.7.2,protobuf-3.15.8,googleapis-common-protos-1.53.0,google-api-core-1.26.3,google-cloud-core-1.6.0,crcmod-1.7,google-crc32c-1.1.2,google-resumable-media-0.5.0,google-cloud-storage-1.25.0,humanize-1.0.0,hurry.filesize-0.9,nest_asyncio-1.5.1,parsimonious-0.8.1,PyJWT-2.0.1,tqdm-4.42.1,Hail-0.2.64")
