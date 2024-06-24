help([==[

Description
===========
The Jupyter Server provides the backend (i.e. the core services, APIs, and REST
endpoints) for Jupyter web applications like Jupyter notebook, JupyterLab, and
Voila.


More information
================
 - Homepage: https://jupyter.org/


Included extensions
===================
anyio-3.7.1, argon2-cffi-bindings-21.2.0, argon2_cffi-23.1.0, arrow-1.2.3,
bleach-6.0.0, comm-0.1.4, debugpy-1.6.7.post1, defusedxml-0.7.1,
deprecation-2.1.0, fastjsonschema-2.18.0, hatch_jupyter_builder-0.8.3,
hatch_nodejs_version-0.3.1, ipykernel-6.25.1, ipython_genutils-0.2.0,
ipywidgets-8.1.0, jsonschema-4.18.0, jsonschema_specifications-2023.7.1,
jupyter_client-8.3.0, jupyter_core-5.3.1, jupyter_events-0.7.0,
jupyter_packaging-0.12.3, jupyter_server-2.7.2,
jupyter_server_terminals-0.4.4, jupyterlab_pygments-0.2.2,
jupyterlab_widgets-3.0.8, mistune-3.0.1, nbclient-0.8.0, nbconvert-7.7.4,
nbformat-5.9.2, nest_asyncio-1.5.7, notebook_shim-0.2.3, overrides-7.4.0,
pandocfilters-1.5.0, prometheus_client-0.17.1, python-json-logger-2.0.7,
referencing-0.30.2, rfc3339_validator-0.1.4, rfc3986_validator-0.1.1,
rpds_py-0.9.2, Send2Trash-1.8.2, sniffio-1.3.0, terminado-0.17.1,
tinycss2-1.2.1, websocket-client-1.6.1, widgetsnbextension-4.0.8
]==])

whatis([==[Description: The Jupyter Server provides the backend (i.e. the core services, APIs, and REST
endpoints) for Jupyter web applications like Jupyter notebook, JupyterLab, and
Voila.]==])
whatis([==[Homepage: https://jupyter.org/]==])
whatis([==[URL: https://jupyter.org/]==])
whatis([==[Extensions: anyio-3.7.1, argon2-cffi-bindings-21.2.0, argon2_cffi-23.1.0, arrow-1.2.3, bleach-6.0.0, comm-0.1.4, debugpy-1.6.7.post1, defusedxml-0.7.1, deprecation-2.1.0, fastjsonschema-2.18.0, hatch_jupyter_builder-0.8.3, hatch_nodejs_version-0.3.1, ipykernel-6.25.1, ipython_genutils-0.2.0, ipywidgets-8.1.0, jsonschema-4.18.0, jsonschema_specifications-2023.7.1, jupyter_client-8.3.0, jupyter_core-5.3.1, jupyter_events-0.7.0, jupyter_packaging-0.12.3, jupyter_server-2.7.2, jupyter_server_terminals-0.4.4, jupyterlab_pygments-0.2.2, jupyterlab_widgets-3.0.8, mistune-3.0.1, nbclient-0.8.0, nbconvert-7.7.4, nbformat-5.9.2, nest_asyncio-1.5.7, notebook_shim-0.2.3, overrides-7.4.0, pandocfilters-1.5.0, prometheus_client-0.17.1, python-json-logger-2.0.7, referencing-0.30.2, rfc3339_validator-0.1.4, rfc3986_validator-0.1.1, rpds_py-0.9.2, Send2Trash-1.8.2, sniffio-1.3.0, terminado-0.17.1, tinycss2-1.2.1, websocket-client-1.6.1, widgetsnbextension-4.0.8]==])

local root = "/app/software/jupyter-server/2.7.2-GCCcore-12.3.0"

conflict("jupyter-server")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("IPython/8.14.0-GCCcore-12.3.0") ) then
    load("IPython/8.14.0-GCCcore-12.3.0")
end

if not ( isloaded("PyYAML/6.0-GCCcore-12.3.0") ) then
    load("PyYAML/6.0-GCCcore-12.3.0")
end

if not ( isloaded("PyZMQ/25.1.1-GCCcore-12.3.0") ) then
    load("PyZMQ/25.1.1-GCCcore-12.3.0")
end

if not ( isloaded("tornado/6.3.2-GCCcore-12.3.0") ) then
    load("tornado/6.3.2-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERMINSERVER", root)
setenv("EBVERSIONJUPYTERMINSERVER", "2.7.2")
setenv("EBDEVELJUPYTERMINSERVER", pathJoin(root, "logs/jupyter-server-2.7.2-GCCcore-12.3.0-easybuild-devel"))

prepend_path("JUPYTER_CONFIG_PATH", pathJoin(root, "etc/jupyter"))
prepend_path("JUPYTER_PATH", pathJoin(root, "share/jupyter"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTJUPYTERMINSERVER", "hatch_nodejs_version-0.3.1,hatch_jupyter_builder-0.8.3,websocket-client-1.6.1,terminado-0.17.1,Send2Trash-1.8.2,prometheus_client-0.17.1,overrides-7.4.0,jupyter_core-5.3.1,fastjsonschema-2.18.0,tinycss2-1.2.1,pandocfilters-1.5.0,mistune-3.0.1,deprecation-2.1.0,jupyter_packaging-0.12.3,jupyterlab_pygments-0.2.2,defusedxml-0.7.1,bleach-6.0.0,arrow-1.2.3,nbformat-5.9.2,nbclient-0.8.0,jupyter_client-8.3.0,nbconvert-7.7.4,jupyter_server_terminals-0.4.4,rfc3986_validator-0.1.1,rfc3339_validator-0.1.4,rpds_py-0.9.2,referencing-0.30.2,python-json-logger-2.0.7,jsonschema_specifications-2023.7.1,jsonschema-4.18.0,jupyter_events-0.7.0,argon2-cffi-bindings-21.2.0,argon2_cffi-23.1.0,sniffio-1.3.0,anyio-3.7.1,jupyter_server-2.7.2,jupyterlab_widgets-3.0.8,widgetsnbextension-4.0.8,comm-0.1.4,ipywidgets-8.1.0,notebook_shim-0.2.3,nest_asyncio-1.5.7,ipykernel-6.25.1,ipython_genutils-0.2.0,debugpy-1.6.7.post1")
