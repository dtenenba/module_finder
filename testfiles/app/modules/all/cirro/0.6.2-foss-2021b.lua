help([==[

Description
===========
A Python 3.8+ library for the Cirro platform.


More information
================
 - Homepage: https://github.com/FredHutch/Cirro-client


Included extensions
===================
aiobotocore-2.4.0, aiohttp-3.8.3, aioitertools-0.11.0, aiosignal-1.2.0, async-
timeout-4.0.2, backoff-2.2.1, boto3-1.24.28, botocore-1.27.59, cirro-0.6.2,
click-8.1.3, Deprecated-1.2.13, editables-0.3, envs-1.4, frozenlist-1.3.1,
fsspec-2022.8.2, gql-3.4.0, graphql-core-3.2.3, hatch_vcs-0.2.0,
hatchling-1.11.1, jmespath-1.0.1, jsonschema-4.6.1, msal-1.21.0, msal-
extensions-1.0.0, multidict-6.0.2, packaging-21.3, pathspec-0.10.1,
pluggy-1.0.0, portalocker-2.7.0, prompt_toolkit-3.0.31, pycognito-2022.8.0,
PyGithub-1.54, PyJWT-2.4.0, python-jose-3.3.0, questionary-1.10.0,
requests-2.28.1, requests-aws4auth-1.1.2, requests-aws4auth-1.1.2, rsa-4.9,
s3fs-2022.8.2, s3transfer-0.6.0, setuptools_scm-6.4.0, tomli-2.0.1,
tqdm-4.62.3, typing_extensions-4.3.0, wrapt-1.14.1, yarl-1.8.1
]==])

whatis([==[Description: A Python 3.8+ library for the Cirro platform.]==])
whatis([==[Homepage: https://github.com/FredHutch/Cirro-client]==])
whatis([==[URL: https://github.com/FredHutch/Cirro-client]==])
whatis([==[Extensions: aiobotocore-2.4.0, aiohttp-3.8.3, aioitertools-0.11.0, aiosignal-1.2.0, async-timeout-4.0.2, backoff-2.2.1, boto3-1.24.28, botocore-1.27.59, cirro-0.6.2, click-8.1.3, Deprecated-1.2.13, editables-0.3, envs-1.4, frozenlist-1.3.1, fsspec-2022.8.2, gql-3.4.0, graphql-core-3.2.3, hatch_vcs-0.2.0, hatchling-1.11.1, jmespath-1.0.1, jsonschema-4.6.1, msal-1.21.0, msal-extensions-1.0.0, multidict-6.0.2, packaging-21.3, pathspec-0.10.1, pluggy-1.0.0, portalocker-2.7.0, prompt_toolkit-3.0.31, pycognito-2022.8.0, PyGithub-1.54, PyJWT-2.4.0, python-jose-3.3.0, questionary-1.10.0, requests-2.28.1, requests-aws4auth-1.1.2, requests-aws4auth-1.1.2, rsa-4.9, s3fs-2022.8.2, s3transfer-0.6.0, setuptools_scm-6.4.0, tomli-2.0.1, tqdm-4.62.3, typing_extensions-4.3.0, wrapt-1.14.1, yarl-1.8.1]==])

local root = "/app/software/cirro/0.6.2-foss-2021b"

conflict("cirro")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("SciPy-bundle/2021.10-foss-2021b") ) then
    load("SciPy-bundle/2021.10-foss-2021b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCIRRO", root)
setenv("EBVERSIONCIRRO", "0.6.2")
setenv("EBDEVELCIRRO", pathJoin(root, "logs/cirro-0.6.2-foss-2021b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTCIRRO", "portalocker-2.7.0,msal-1.21.0,msal-extensions-1.0.0,tomli-2.0.1,pathspec-0.10.1,editables-0.3,pluggy-1.0.0,packaging-21.3,hatchling-1.11.1,setuptools_scm-6.4.0,hatch_vcs-0.2.0,click-8.1.3,jmespath-1.0.1,botocore-1.27.59,s3transfer-0.6.0,boto3-1.24.28,typing_extensions-4.3.0,aioitertools-0.11.0,aiobotocore-2.4.0,fsspec-2022.8.2,aiosignal-1.2.0,async-timeout-4.0.2,frozenlist-1.3.1,aiohttp-3.8.3,s3fs-2022.8.2,prompt_toolkit-3.0.31,questionary-1.10.0,requests-2.28.1,multidict-6.0.2,yarl-1.8.1,backoff-2.2.1,graphql-core-3.2.3,gql-3.4.0,requests-aws4auth-1.1.2,envs-1.4,rsa-4.9,python-jose-3.3.0,pycognito-2022.8.0,tqdm-4.62.3,wrapt-1.14.1,Deprecated-1.2.13,PyJWT-2.4.0,PyGithub-1.54,jsonschema-4.6.1,requests-aws4auth-1.1.2,cirro-0.6.2")
