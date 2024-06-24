help([==[

Description
===========
A Python 3.8+ library for the Cirro platform.


More information
================
 - Homepage: https://github.com/FredHutch/Cirro-client


Included extensions
===================
aiobotocore-2.12.0, aiohttp-3.8.4, aioitertools-0.11.0, aiosignal-1.3.1,
async-timeout-4.0.2, asynctest-0.13.0, attrs-23.1.0, boto3-1.34.51,
botocore-1.34.54, brotlicffi-1.1.0.0, cirro-1.1.3, cirro_api_client-0.0.9,
envs-1.4, frozenlist-1.3.3, fsspec-2024.2.0, h11-0.14.0, httpcore-1.0.4,
httpx-0.26.0, idna-ssl-1.1.0, importlib_metadata-6.6.0, jmespath-1.0.1,
msal-1.22.0, msal-extensions-1.0.0, multidict-6.0.4, portalocker-2.7.0,
prompt_toolkit-3.0.36, pycognito-2023.5.0, PyGithub-1.58.2, PyJWT-2.7.0,
PyNaCl-1.5.0, python-dateutil-2.8.2, python-jose-3.3.0, questionary-2.0.1,
requests-2.31.0, rsa-4.9, s3fs-2024.2.0, s3transfer-0.10.0, sniffio-1.3.1,
tqdm-4.65.0, trove-classifiers-2023.5.24, typing_extensions-4.6.3,
tzdata-2024.1, urllib3-2.0.7, wrapt-1.15.0, yarl-1.9.2
]==])

whatis([==[Description: A Python 3.8+ library for the Cirro platform.]==])
whatis([==[Homepage: https://github.com/FredHutch/Cirro-client]==])
whatis([==[URL: https://github.com/FredHutch/Cirro-client]==])
whatis([==[Extensions: aiobotocore-2.12.0, aiohttp-3.8.4, aioitertools-0.11.0, aiosignal-1.3.1, async-timeout-4.0.2, asynctest-0.13.0, attrs-23.1.0, boto3-1.34.51, botocore-1.34.54, brotlicffi-1.1.0.0, cirro-1.1.3, cirro_api_client-0.0.9, envs-1.4, frozenlist-1.3.3, fsspec-2024.2.0, h11-0.14.0, httpcore-1.0.4, httpx-0.26.0, idna-ssl-1.1.0, importlib_metadata-6.6.0, jmespath-1.0.1, msal-1.22.0, msal-extensions-1.0.0, multidict-6.0.4, portalocker-2.7.0, prompt_toolkit-3.0.36, pycognito-2023.5.0, PyGithub-1.58.2, PyJWT-2.7.0, PyNaCl-1.5.0, python-dateutil-2.8.2, python-jose-3.3.0, questionary-2.0.1, requests-2.31.0, rsa-4.9, s3fs-2024.2.0, s3transfer-0.10.0, sniffio-1.3.1, tqdm-4.65.0, trove-classifiers-2023.5.24, typing_extensions-4.6.3, tzdata-2024.1, urllib3-2.0.7, wrapt-1.15.0, yarl-1.9.2]==])

local root = "/app/software/cirro/1.1.3-foss-2022b"

conflict("cirro")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCIRRO", root)
setenv("EBVERSIONCIRRO", "1.1.3")
setenv("EBDEVELCIRRO", pathJoin(root, "logs/cirro-1.1.3-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTCIRRO", "requests-2.31.0,portalocker-2.7.0,msal-1.22.0,msal-extensions-1.0.0,trove-classifiers-2023.5.24,jmespath-1.0.1,python-dateutil-2.8.2,botocore-1.34.54,s3transfer-0.10.0,boto3-1.34.51,prompt_toolkit-3.0.36,questionary-2.0.1,frozenlist-1.3.3,aiosignal-1.3.1,typing_extensions-4.6.3,async-timeout-4.0.2,importlib_metadata-6.6.0,attrs-23.1.0,multidict-6.0.4,yarl-1.9.2,idna-ssl-1.1.0,asynctest-0.13.0,aiohttp-3.8.4,wrapt-1.15.0,aioitertools-0.11.0,aiobotocore-2.12.0,fsspec-2024.2.0,s3fs-2024.2.0,envs-1.4,rsa-4.9,python-jose-3.3.0,pycognito-2023.5.0,tqdm-4.65.0,PyJWT-2.7.0,PyNaCl-1.5.0,PyGithub-1.58.2,cirro_api_client-0.0.9,h11-0.14.0,httpcore-1.0.4,httpx-0.26.0,tzdata-2024.1,brotlicffi-1.1.0.0,urllib3-2.0.7,sniffio-1.3.1,cirro-1.1.3")
