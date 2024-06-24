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
anyio-3.6.1, jupyter_server-1.21.0, nbclassic-0.4.8, notebook_shim-0.1.0,
sniffio-1.3.0, websocket-client-1.4.2
]==])

whatis([==[Description: The Jupyter Server provides the backend (i.e. the core services, APIs, and REST
endpoints) for Jupyter web applications like Jupyter notebook, JupyterLab, and
Voila.]==])
whatis([==[Homepage: https://jupyter.org/]==])
whatis([==[URL: https://jupyter.org/]==])
whatis([==[Extensions: anyio-3.6.1, jupyter_server-1.21.0, nbclassic-0.4.8, notebook_shim-0.1.0, sniffio-1.3.0, websocket-client-1.4.2]==])

local root = "/app/software/jupyter-server/1.21.0-GCCcore-11.3.0"

conflict("jupyter-server")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("IPython/8.5.0-GCCcore-11.3.0") ) then
    load("IPython/8.5.0-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERMINSERVER", root)
setenv("EBVERSIONJUPYTERMINSERVER", "1.21.0")
setenv("EBDEVELJUPYTERMINSERVER", pathJoin(root, "logs/jupyter-server-1.21.0-GCCcore-11.3.0-easybuild-devel"))

prepend_path("JUPYTER_CONFIG_PATH", pathJoin(root, "etc/jupyter"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTJUPYTERMINSERVER", "sniffio-1.3.0,anyio-3.6.1,websocket-client-1.4.2,notebook_shim-0.1.0,nbclassic-0.4.8,jupyter_server-1.21.0")
