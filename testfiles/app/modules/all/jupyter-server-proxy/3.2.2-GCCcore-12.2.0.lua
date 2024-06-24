help([==[

Description
===========
Jupyter Server Proxy lets you run arbitrary external processes
(such as RStudio, Shiny Server, Syncthing, PostgreSQL, Code Server, etc)
alongside your notebook server and provide authenticated web access to them    
using a path like /rstudio next to others like /lab. Alongside the python
package that provides the main functionality, the JupyterLab extension
(@jupyterlab/server-proxy) provides buttons in the JupyterLab launcher window
to get to RStudio for example.


More information
================
 - Homepage: https://github.com/jupyterhub/jupyter-server-proxy


Included extensions
===================
jupyter-server-proxy-3.2.2, simpervisor-0.4
]==])

whatis([==[Description: Jupyter Server Proxy lets you run arbitrary external processes
(such as RStudio, Shiny Server, Syncthing, PostgreSQL, Code Server, etc)
alongside your notebook server and provide authenticated web access to them    
using a path like /rstudio next to others like /lab. Alongside the python
package that provides the main functionality, the JupyterLab extension
(@jupyterlab/server-proxy) provides buttons in the JupyterLab launcher window
to get to RStudio for example.]==])
whatis([==[Homepage: https://github.com/jupyterhub/jupyter-server-proxy]==])
whatis([==[URL: https://github.com/jupyterhub/jupyter-server-proxy]==])
whatis([==[Extensions: jupyter-server-proxy-3.2.2, simpervisor-0.4]==])

local root = "/app/software/jupyter-server-proxy/3.2.2-GCCcore-12.2.0"

conflict("jupyter-server-proxy")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("IPython/8.14.0-GCCcore-12.2.0") ) then
    load("IPython/8.14.0-GCCcore-12.2.0")
end

if not ( isloaded("jupyter-server/2.7.0-GCCcore-12.2.0") ) then
    load("jupyter-server/2.7.0-GCCcore-12.2.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("aiohttp/3.8.5-GCCcore-12.2.0") ) then
    load("aiohttp/3.8.5-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERMINSERVERMINPROXY", root)
setenv("EBVERSIONJUPYTERMINSERVERMINPROXY", "3.2.2")
setenv("EBDEVELJUPYTERMINSERVERMINPROXY", pathJoin(root, "logs/jupyter-server-proxy-3.2.2-GCCcore-12.2.0-easybuild-devel"))

prepend_path("JUPYTER_PATH", pathJoin(root, "share/jupyter"))
prepend_path("JUPYTER_CONFIG_PATH", pathJoin(root, "etc/jupyter"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTJUPYTERMINSERVERMINPROXY", "simpervisor-0.4,jupyter-server-proxy-3.2.2")
