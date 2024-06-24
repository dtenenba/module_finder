help([==[

Description
===========
JupyterHub is a multiuser version of the Jupyter (IPython) notebook designed
 for centralized deployments in companies, university classrooms and research labs.


More information
================
 - Homepage: https://jupyter.org


Included extensions
===================
alembic-1.11.1, async_generator-1.10, batchspawner-1.2.0-2a9eda0,
certipy-0.1.3, greenlet-2.0.2, jupyter-telemetry-0.1.0, jupyterhub-4.0.1,
jupyterhub-jwtauthenticator-v2-2.0.3, jupyterhub-ldapauthenticator-1.3.2,
jupyterhub-nativeauthenticator-1.2.0, jupyterhub-simplespawner-0.1,
jupyterhub-systemdspawner-1.0.1, ldap3-2.9.1, oauthlib-3.2.2,
onetimepass-1.0.1, pamela-1.1.0, PyJWT-2.8.0, pyOpenSSL-23.2.0,
ruamel.yaml-0.17.32, ruamel.yaml.clib-0.2.7, SQLAlchemy-2.0.19
]==])

whatis([==[Description: JupyterHub is a multiuser version of the Jupyter (IPython) notebook designed
 for centralized deployments in companies, university classrooms and research labs.]==])
whatis([==[Homepage: https://jupyter.org]==])
whatis([==[URL: https://jupyter.org]==])
whatis([==[Extensions: alembic-1.11.1, async_generator-1.10, batchspawner-1.2.0-2a9eda0, certipy-0.1.3, greenlet-2.0.2, jupyter-telemetry-0.1.0, jupyterhub-4.0.1, jupyterhub-jwtauthenticator-v2-2.0.3, jupyterhub-ldapauthenticator-1.3.2, jupyterhub-nativeauthenticator-1.2.0, jupyterhub-simplespawner-0.1, jupyterhub-systemdspawner-1.0.1, ldap3-2.9.1, oauthlib-3.2.2, onetimepass-1.0.1, pamela-1.1.0, PyJWT-2.8.0, pyOpenSSL-23.2.0, ruamel.yaml-0.17.32, ruamel.yaml.clib-0.2.7, SQLAlchemy-2.0.19]==])

local root = "/app/software/JupyterHub/4.0.1-GCCcore-12.2.0"

conflict("JupyterHub")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("IPython/8.14.0-GCCcore-12.2.0") ) then
    load("IPython/8.14.0-GCCcore-12.2.0")
end

if not ( isloaded("Mako/1.2.4-GCCcore-12.2.0") ) then
    load("Mako/1.2.4-GCCcore-12.2.0")
end

if not ( isloaded("configurable-http-proxy/4.5.5-GCCcore-12.2.0") ) then
    load("configurable-http-proxy/4.5.5-GCCcore-12.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("jupyter-server-proxy/3.2.2-GCCcore-12.2.0") ) then
    load("jupyter-server-proxy/3.2.2-GCCcore-12.2.0")
end

if not ( isloaded("PycURL/7.45.2-GCCcore-12.2.0") ) then
    load("PycURL/7.45.2-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERHUB", root)
setenv("EBVERSIONJUPYTERHUB", "4.0.1")
setenv("EBDEVELJUPYTERHUB", pathJoin(root, "logs/JupyterHub-4.0.1-GCCcore-12.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTJUPYTERHUB", "certipy-0.1.3,pamela-1.1.0,greenlet-2.0.2,async_generator-1.10,SQLAlchemy-2.0.19,alembic-1.11.1,oauthlib-3.2.2,pyOpenSSL-23.2.0,ruamel.yaml-0.17.32,ruamel.yaml.clib-0.2.7,jupyter-telemetry-0.1.0,jupyterhub-4.0.1,batchspawner-1.2.0-2a9eda0,jupyterhub-systemdspawner-1.0.1,jupyterhub-simplespawner-0.1,ldap3-2.9.1,jupyterhub-ldapauthenticator-1.3.2,PyJWT-2.8.0,jupyterhub-jwtauthenticator-v2-2.0.3,onetimepass-1.0.1,jupyterhub-nativeauthenticator-1.2.0")
