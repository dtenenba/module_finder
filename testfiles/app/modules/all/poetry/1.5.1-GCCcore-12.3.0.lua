help([==[

Description
===========
Python packaging and dependency management made easy. Poetry helps you declare, manage and install
 dependencies of Python projects, ensuring you have the right stack everywhere.


More information
================
 - Homepage: https://python-poetry.org


Included extensions
===================
attrs-23.1.0, build-0.10.0, CacheControl-0.12.14, certifi-2023.5.7, charset-
normalizer-3.1.0, cleo-2.0.1, crashtest-0.4.1, dulwich-0.21.5, html5lib-1.1,
idna-3.4, importlib_metadata-6.7.0, installer-0.7.0, jaraco.classes-3.2.3,
jeepney-0.8.0, jsonschema-4.17.3, keyring-23.13.1, lockfile-0.12.2, more-
itertools-9.1.0, msgpack-1.0.5, pexpect-4.8.0, pkginfo-1.9.6,
platformdirs-3.8.0, poetry-1.5.1, poetry_core-1.6.1,
poetry_plugin_export-1.4.0, ptyprocess-0.7.0, pyproject_hooks-1.0.0,
pyrsistent-0.19.3, rapidfuzz-2.15.1, requests-2.31.0, requests-toolbelt-1.0.0,
SecretStorage-3.3.3, shellingham-1.5.0, six-1.16.0, tomlkit-0.11.8,
urllib3-1.26.16, webencodings-0.5.1, zipp-3.15.0
]==])

whatis([==[Description: Python packaging and dependency management made easy. Poetry helps you declare, manage and install
 dependencies of Python projects, ensuring you have the right stack everywhere.]==])
whatis([==[Homepage: https://python-poetry.org]==])
whatis([==[URL: https://python-poetry.org]==])
whatis([==[Extensions: attrs-23.1.0, build-0.10.0, CacheControl-0.12.14, certifi-2023.5.7, charset-normalizer-3.1.0, cleo-2.0.1, crashtest-0.4.1, dulwich-0.21.5, html5lib-1.1, idna-3.4, importlib_metadata-6.7.0, installer-0.7.0, jaraco.classes-3.2.3, jeepney-0.8.0, jsonschema-4.17.3, keyring-23.13.1, lockfile-0.12.2, more-itertools-9.1.0, msgpack-1.0.5, pexpect-4.8.0, pkginfo-1.9.6, platformdirs-3.8.0, poetry-1.5.1, poetry_core-1.6.1, poetry_plugin_export-1.4.0, ptyprocess-0.7.0, pyproject_hooks-1.0.0, pyrsistent-0.19.3, rapidfuzz-2.15.1, requests-2.31.0, requests-toolbelt-1.0.0, SecretStorage-3.3.3, shellingham-1.5.0, six-1.16.0, tomlkit-0.11.8, urllib3-1.26.16, webencodings-0.5.1, zipp-3.15.0]==])

local root = "/app/software/poetry/1.5.1-GCCcore-12.3.0"

conflict("poetry")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("hatchling/1.18.0-GCCcore-12.3.0") ) then
    load("hatchling/1.18.0-GCCcore-12.3.0")
end

if not ( isloaded("cryptography/41.0.1-GCCcore-12.3.0") ) then
    load("cryptography/41.0.1-GCCcore-12.3.0")
end

if not ( isloaded("virtualenv/20.23.1-GCCcore-12.3.0") ) then
    load("virtualenv/20.23.1-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPOETRY", root)
setenv("EBVERSIONPOETRY", "1.5.1")
setenv("EBDEVELPOETRY", pathJoin(root, "logs/poetry-1.5.1-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTPOETRY", "six-1.16.0,idna-3.4,certifi-2023.5.7,urllib3-1.26.16,charset-normalizer-3.1.0,dulwich-0.21.5,crashtest-0.4.1,zipp-3.15.0,importlib_metadata-6.7.0,jeepney-0.8.0,SecretStorage-3.3.3,more-itertools-9.1.0,jaraco.classes-3.2.3,keyring-23.13.1,pyproject_hooks-1.0.0,build-0.10.0,installer-0.7.0,webencodings-0.5.1,html5lib-1.1,rapidfuzz-2.15.1,cleo-2.0.1,attrs-23.1.0,pyrsistent-0.19.3,requests-toolbelt-1.0.0,pkginfo-1.9.6,ptyprocess-0.7.0,pexpect-4.8.0,jsonschema-4.17.3,platformdirs-3.8.0,shellingham-1.5.0,tomlkit-0.11.8,requests-2.31.0,msgpack-1.0.5,CacheControl-0.12.14,lockfile-0.12.2,poetry_core-1.6.1,poetry_plugin_export-1.4.0,poetry-1.5.1")
