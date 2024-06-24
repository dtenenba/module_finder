help([==[

Description
===========
A Python 3.8+ library for the Cirro platform.


More information
================
 - Homepage: https://github.com/FredHutch/Cirro-client


Included extensions
===================
aiobotocore-2.5.0, aiohttp-3.8.4, aioitertools-0.11.0, aiosignal-1.3.1, async-
timeout-4.0.2, asynctest-0.13.0, attrs-23.1.0, backoff-2.2.1, boto3-1.26.76,
botocore-1.29.76, cirro-0.8.0, Deprecated-1.2.14, envs-1.4, frozenlist-1.3.3,
fsspec-2023.6.0, gql-3.4.1, graphql-core-3.2.3, idna-ssl-1.1.0,
importlib_metadata-6.6.0, jmespath-1.0.1, msal-1.22.0, msal-extensions-1.0.0,
multidict-6.0.4, portalocker-2.7.0, prompt_toolkit-3.0.38, pycognito-2023.5.0,
PyGithub-1.58.2, PyJWT-2.7.0, PyNaCl-1.5.0, python-dateutil-2.8.2, python-
jose-3.3.0, questionary-1.10.0, requests-2.31.0, requests_aws4auth-1.2.3,
rsa-4.9, s3fs-2023.6.0, s3transfer-0.6.1, tqdm-4.65.0, trove-
classifiers-2023.5.24, typing_extensions-4.6.3, wrapt-1.15.0, yarl-1.9.2
]==])

whatis([==[Description: A Python 3.8+ library for the Cirro platform.]==])
whatis([==[Homepage: https://github.com/FredHutch/Cirro-client]==])
whatis([==[URL: https://github.com/FredHutch/Cirro-client]==])
whatis([==[Extensions: aiobotocore-2.5.0, aiohttp-3.8.4, aioitertools-0.11.0, aiosignal-1.3.1, async-timeout-4.0.2, asynctest-0.13.0, attrs-23.1.0, backoff-2.2.1, boto3-1.26.76, botocore-1.29.76, cirro-0.8.0, Deprecated-1.2.14, envs-1.4, frozenlist-1.3.3, fsspec-2023.6.0, gql-3.4.1, graphql-core-3.2.3, idna-ssl-1.1.0, importlib_metadata-6.6.0, jmespath-1.0.1, msal-1.22.0, msal-extensions-1.0.0, multidict-6.0.4, portalocker-2.7.0, prompt_toolkit-3.0.38, pycognito-2023.5.0, PyGithub-1.58.2, PyJWT-2.7.0, PyNaCl-1.5.0, python-dateutil-2.8.2, python-jose-3.3.0, questionary-1.10.0, requests-2.31.0, requests_aws4auth-1.2.3, rsa-4.9, s3fs-2023.6.0, s3transfer-0.6.1, tqdm-4.65.0, trove-classifiers-2023.5.24, typing_extensions-4.6.3, wrapt-1.15.0, yarl-1.9.2]==])

local root = "/app/software/cirro/0.8.0-foss-2022b"

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
setenv("EBVERSIONCIRRO", "0.8.0")
setenv("EBDEVELCIRRO", pathJoin(root, "logs/cirro-0.8.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTCIRRO", "requests-2.31.0,portalocker-2.7.0,msal-1.22.0,msal-extensions-1.0.0,trove-classifiers-2023.5.24,jmespath-1.0.1,python-dateutil-2.8.2,botocore-1.29.76,s3transfer-0.6.1,boto3-1.26.76,prompt_toolkit-3.0.38,questionary-1.10.0,frozenlist-1.3.3,aiosignal-1.3.1,typing_extensions-4.6.3,async-timeout-4.0.2,importlib_metadata-6.6.0,attrs-23.1.0,multidict-6.0.4,yarl-1.9.2,idna-ssl-1.1.0,asynctest-0.13.0,aiohttp-3.8.4,wrapt-1.15.0,aioitertools-0.11.0,aiobotocore-2.5.0,fsspec-2023.6.0,s3fs-2023.6.0,requests_aws4auth-1.2.3,backoff-2.2.1,graphql-core-3.2.3,gql-3.4.1,envs-1.4,rsa-4.9,python-jose-3.3.0,pycognito-2023.5.0,tqdm-4.65.0,Deprecated-1.2.14,PyJWT-2.7.0,PyNaCl-1.5.0,PyGithub-1.58.2,cirro-0.8.0")
