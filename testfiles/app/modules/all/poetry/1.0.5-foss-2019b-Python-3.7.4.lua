help([==[

Description
===========
Python packaging and dependency management made easy


More information
================
 - Homepage: https://python-poetry.org/


Included extensions
===================
appdirs-1.4.3, attrs-19.3.0, CacheControl-0.12.6, cachy-0.3.0,
certifi-2020.4.5.1, chardet-3.0.4, cleo-0.7.6, clikit-0.5.0,
contextlib2-0.6.0.post1, cryptography-2.9, distlib-0.3.0, docutils-0.16,
filelock-3.0.12, flit-2.2.0, flit-core-2.2.0, glob2-0.7, html5lib-1.0.1,
idna-2.9, importlib-metadata-1.6.0, importlib-resources-1.4.0,
intreehooks-1.0, jeepney-0.4.3, jsonschema-3.2.0, keyring-21.2.0,
msgpack-1.0.0, pathlib2-2.3.5, pexpect-4.8.0, pkginfo-1.5.0.1,
poetry_core-1.0.0a4, ptyprocess-0.6.0, pylev-1.3.0, pyparsing-2.4.7,
pyrsistent-0.15.7, pytoml-0.1.21, pywin32-ctypes-0.2.0, requests-2.23.0,
requests-toolbelt-0.9.1, scandir-1.10.0, SecretStorage-3.1.2,
shellingham-1.3.2, singledispatch-3.4.0.3, subprocess32-3.5.4, tomlkit-0.5.11,
typing-extensions-3.7.4.2, urllib3-1.25.8, virtualenv-20.0.16,
webencodings-0.5.1, woops-0.2.1, zipfile36-0.1.3, zipp-3.1.0
]==])

whatis([==[Description: Python packaging and dependency management made easy]==])
whatis([==[Homepage: https://python-poetry.org/]==])
whatis([==[URL: https://python-poetry.org/]==])
whatis([==[Extensions: appdirs-1.4.3, attrs-19.3.0, CacheControl-0.12.6, cachy-0.3.0, certifi-2020.4.5.1, chardet-3.0.4, cleo-0.7.6, clikit-0.5.0, contextlib2-0.6.0.post1, cryptography-2.9, distlib-0.3.0, docutils-0.16, filelock-3.0.12, flit-2.2.0, flit-core-2.2.0, glob2-0.7, html5lib-1.0.1, idna-2.9, importlib-metadata-1.6.0, importlib-resources-1.4.0, intreehooks-1.0, jeepney-0.4.3, jsonschema-3.2.0, keyring-21.2.0, msgpack-1.0.0, pathlib2-2.3.5, pexpect-4.8.0, pkginfo-1.5.0.1, poetry_core-1.0.0a4, ptyprocess-0.6.0, pylev-1.3.0, pyparsing-2.4.7, pyrsistent-0.15.7, pytoml-0.1.21, pywin32-ctypes-0.2.0, requests-2.23.0, requests-toolbelt-0.9.1, scandir-1.10.0, SecretStorage-3.1.2, shellingham-1.3.2, singledispatch-3.4.0.3, subprocess32-3.5.4, tomlkit-0.5.11, typing-extensions-3.7.4.2, urllib3-1.25.8, virtualenv-20.0.16, webencodings-0.5.1, woops-0.2.1, zipfile36-0.1.3, zipp-3.1.0]==])

local root = "/app/software/poetry/1.0.5-foss-2019b-Python-3.7.4"

conflict("poetry")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPOETRY", root)
setenv("EBVERSIONPOETRY", "1.0.5")
setenv("EBDEVELPOETRY", pathJoin(root, "logs/poetry-1.0.5-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTPOETRY", "poetry_core-1.0.0a4,pylev-1.3.0,woops-0.2.1,typing-extensions-3.7.4.2,clikit-0.5.0,cachy-0.3.0,chardet-3.0.4,idna-2.9,urllib3-1.25.8,certifi-2020.4.5.1,requests-2.23.0,requests-toolbelt-0.9.1,attrs-19.3.0,pyrsistent-0.15.7,zipp-3.1.0,scandir-1.10.0,pathlib2-2.3.5,contextlib2-0.6.0.post1,importlib-metadata-1.6.0,jsonschema-3.2.0,pytoml-0.1.21,intreehooks-1.0,msgpack-1.0.0,CacheControl-0.12.6,pkginfo-1.5.0.1,webencodings-0.5.1,html5lib-1.0.1,shellingham-1.3.2,tomlkit-0.5.11,subprocess32-3.5.4,ptyprocess-0.6.0,pexpect-4.8.0,pyparsing-2.4.7,appdirs-1.4.3,distlib-0.3.0,filelock-3.0.12,singledispatch-3.4.0.3,importlib-resources-1.4.0,virtualenv-20.0.16,glob2-0.7,cryptography-2.9,jeepney-0.4.3,SecretStorage-3.1.2,pywin32-ctypes-0.2.0,keyring-21.2.0,cleo-0.7.6,flit-core-2.2.0,docutils-0.16,zipfile36-0.1.3,flit-2.2.0")
