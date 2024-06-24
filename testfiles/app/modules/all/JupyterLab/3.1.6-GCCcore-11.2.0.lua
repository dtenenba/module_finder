help([==[

Description
===========
JupyterLab is the next-generation user interface for Project Jupyter offering all the familiar
 building blocks of the classic Jupyter Notebook (notebook, terminal, text editor, file browser, rich outputs,
 etc.) in a flexible and powerful user interface. JupyterLab will eventually replace the classic Jupyter
 Notebook.


More information
================
 - Homepage: https://jupyter.org/


Included extensions
===================
anyio-3.3.0, json5-0.9.6, jupyter_server-1.10.2, JupyterLab-3.1.6,
jupyterlab_server-2.7.0, nbclassic-0.3.1, requests-unixsocket-0.2.0,
sniffio-1.2.0, websocket-client-1.2.0
]==])

whatis([==[Description: JupyterLab is the next-generation user interface for Project Jupyter offering all the familiar
 building blocks of the classic Jupyter Notebook (notebook, terminal, text editor, file browser, rich outputs,
 etc.) in a flexible and powerful user interface. JupyterLab will eventually replace the classic Jupyter
 Notebook.]==])
whatis([==[Homepage: https://jupyter.org/]==])
whatis([==[URL: https://jupyter.org/]==])
whatis([==[Extensions: anyio-3.3.0, json5-0.9.6, jupyter_server-1.10.2, JupyterLab-3.1.6, jupyterlab_server-2.7.0, nbclassic-0.3.1, requests-unixsocket-0.2.0, sniffio-1.2.0, websocket-client-1.2.0]==])

local root = "/app/software/JupyterLab/3.1.6-GCCcore-11.2.0"

conflict("JupyterLab")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("IPython/7.26.0-GCCcore-11.2.0") ) then
    load("IPython/7.26.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERLAB", root)
setenv("EBVERSIONJUPYTERLAB", "3.1.6")
setenv("EBDEVELJUPYTERLAB", pathJoin(root, "logs/JupyterLab-3.1.6-GCCcore-11.2.0-easybuild-devel"))

setenv("JUPYTERLAB_DIR", "/app/software/JupyterLab/3.1.6-GCCcore-11.2.0/share/jupyter/lab")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTJUPYTERLAB", "anyio-3.3.0,json5-0.9.6,jupyter_server-1.10.2,requests-unixsocket-0.2.0,sniffio-1.2.0,websocket-client-1.2.0,nbclassic-0.3.1,jupyterlab_server-2.7.0,JupyterLab-3.1.6")
