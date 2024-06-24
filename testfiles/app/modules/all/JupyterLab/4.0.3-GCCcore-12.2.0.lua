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


]==])

whatis([==[Description: JupyterLab is the next-generation user interface for Project Jupyter offering all the familiar
 building blocks of the classic Jupyter Notebook (notebook, terminal, text editor, file browser, rich outputs,
 etc.) in a flexible and powerful user interface. JupyterLab will eventually replace the classic Jupyter
 Notebook.]==])
whatis([==[Homepage: https://jupyter.org/]==])
whatis([==[URL: https://jupyter.org/]==])

local root = "/app/software/JupyterLab/4.0.3-GCCcore-12.2.0"

conflict("JupyterLab")

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

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERLAB", root)
setenv("EBVERSIONJUPYTERLAB", "4.0.3")
setenv("EBDEVELJUPYTERLAB", pathJoin(root, "logs/JupyterLab-4.0.3-GCCcore-12.2.0-easybuild-devel"))

setenv("JUPYTERLAB_DIR", "/app/software/JupyterLab/4.0.3-GCCcore-12.2.0/share/jupyter/lab")
prepend_path("JUPYTER_PATH", pathJoin(root, "share/jupyter"))
prepend_path("JUPYTER_CONFIG_PATH", pathJoin(root, "etc/jupyter"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0

setenv("JUPYTERLAB_SETTINGS_DIR", pathJoin(os.getenv("HOME"), ".jupyter", "lab", "user-settings"))
setenv("JUPYTERLAB_WORKSPACES_DIR", pathJoin(os.getenv("HOME"), ".jupyter", "lab", "workspaces"))

