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
json5-0.8.5, JupyterLab-1.2.5, jupyterlab_server-1.0.6
]==])

whatis([==[Description: JupyterLab is the next-generation user interface for Project Jupyter offering all the familiar
 building blocks of the classic Jupyter Notebook (notebook, terminal, text editor, file browser, rich outputs,
 etc.) in a flexible and powerful user interface. JupyterLab will eventually replace the classic Jupyter
 Notebook.]==])
whatis([==[Homepage: https://jupyter.org/]==])
whatis([==[URL: https://jupyter.org/]==])
whatis([==[Extensions: json5-0.8.5, JupyterLab-1.2.5, jupyterlab_server-1.0.6]==])

local root = "/app/software/JupyterLab/1.2.5-foss-2019b-Python-3.7.4"

conflict("JupyterLab")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("IPython/7.13.0-foss-2019b-Python-3.7.4") ) then
    load("IPython/7.13.0-foss-2019b-Python-3.7.4")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTJUPYTERLAB", root)
setenv("EBVERSIONJUPYTERLAB", "1.2.5")
setenv("EBDEVELJUPYTERLAB", pathJoin(root, "logs/JupyterLab-1.2.5-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTJUPYTERLAB", "json5-0.8.5,jupyterlab_server-1.0.6,JupyterLab-1.2.5")
