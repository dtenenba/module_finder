help([==[

Description
===========
Python packaging and dependency management made easy


More information
================
 - Homepage: https://python-poetry.org/


Included extensions
===================
CacheControl-0.12.6, cachy-0.3.0, cleo-0.7.6, clikit-0.4.3, crashtest-0.3.0,
html5lib-1.1, intreehooks-1.0, jeepney-0.4.3, jsonschema-3.2.0,
keyring-20.0.1, keyrings.alt-3.4.0, lockfile-0.12.2, msgpack-1.0.0,
pastel-0.2.0, pexpect-4.8.0, pkginfo-1.5.0.1, poetry-1.0.9, ptyprocess-0.6.0,
pylev-1.3.0, pyrsistent-0.14.11, pytoml-0.1.21, requests-toolbelt-0.8.0,
SecretStorage-3.1.2, shellingham-1.3.2, tomlkit-0.5.11, webencodings-0.5.1
]==])

whatis([==[Description: Python packaging and dependency management made easy]==])
whatis([==[Homepage: https://python-poetry.org/]==])
whatis([==[URL: https://python-poetry.org/]==])
whatis([==[Extensions: CacheControl-0.12.6, cachy-0.3.0, cleo-0.7.6, clikit-0.4.3, crashtest-0.3.0, html5lib-1.1, intreehooks-1.0, jeepney-0.4.3, jsonschema-3.2.0, keyring-20.0.1, keyrings.alt-3.4.0, lockfile-0.12.2, msgpack-1.0.0, pastel-0.2.0, pexpect-4.8.0, pkginfo-1.5.0.1, poetry-1.0.9, ptyprocess-0.6.0, pylev-1.3.0, pyrsistent-0.14.11, pytoml-0.1.21, requests-toolbelt-0.8.0, SecretStorage-3.1.2, shellingham-1.3.2, tomlkit-0.5.11, webencodings-0.5.1]==])

local root = "/app/software/poetry/1.0.9-GCCcore-9.3.0-Python-3.8.2"

conflict("poetry")

if not ( isloaded("GCCcore/9.3.0") ) then
    load("GCCcore/9.3.0")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPOETRY", root)
setenv("EBVERSIONPOETRY", "1.0.9")
setenv("EBDEVELPOETRY", pathJoin(root, "logs/poetry-1.0.9-GCCcore-9.3.0-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTPOETRY", "pytoml-0.1.21,intreehooks-1.0,crashtest-0.3.0,pylev-1.3.0,pastel-0.2.0,clikit-0.4.3,jeepney-0.4.3,SecretStorage-3.1.2,keyring-20.0.1,keyrings.alt-3.4.0,tomlkit-0.5.11,shellingham-1.3.2,requests-toolbelt-0.8.0,pyrsistent-0.14.11,pkginfo-1.5.0.1,pexpect-4.8.0,jsonschema-3.2.0,webencodings-0.5.1,html5lib-1.1,cleo-0.7.6,cachy-0.3.0,msgpack-1.0.0,CacheControl-0.12.6,ptyprocess-0.6.0,lockfile-0.12.2,poetry-1.0.9")
