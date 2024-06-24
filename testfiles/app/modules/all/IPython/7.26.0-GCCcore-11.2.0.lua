help([==[

Description
===========
IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.


More information
================
 - Homepage: https://ipython.org/index.html


Included extensions
===================
argon2-cffi-20.1.0, async_generator-1.10, backcall-0.2.0, bleach-4.0.0,
debugpy-1.4.1, defusedxml-0.7.1, deprecation-2.1.0, entrypoints-0.3,
ipykernel-6.0.3, ipython-7.26.0, ipython_genutils-0.2.0, ipywidgets-7.6.3,
jedi-0.18.0, jupyter_client-6.1.12, jupyter_core-4.7.1,
jupyter_packaging-0.10.4, jupyterlab_pygments-0.1.2, jupyterlab_widgets-1.0.0,
matplotlib-inline-0.1.2, mistune-0.8.4, nbclient-0.5.3, nbconvert-6.4.0,
nbformat-5.1.3, nest_asyncio-1.5.1, notebook-6.4.0, pandocfilters-1.4.3,
parso-0.8.2, pickleshare-0.7.5, prometheus_client-0.11.0,
prompt_toolkit-3.0.19, pyzmq-22.2.1, Send2Trash-1.8.0, terminado-0.10.1,
testpath-0.5.0, tornado-6.1, traitlets-5.0.5, widgetsnbextension-3.5.1
]==])

whatis([==[Description: IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.]==])
whatis([==[Homepage: https://ipython.org/index.html]==])
whatis([==[URL: https://ipython.org/index.html]==])
whatis([==[Extensions: argon2-cffi-20.1.0, async_generator-1.10, backcall-0.2.0, bleach-4.0.0, debugpy-1.4.1, defusedxml-0.7.1, deprecation-2.1.0, entrypoints-0.3, ipykernel-6.0.3, ipython-7.26.0, ipython_genutils-0.2.0, ipywidgets-7.6.3, jedi-0.18.0, jupyter_client-6.1.12, jupyter_core-4.7.1, jupyter_packaging-0.10.4, jupyterlab_pygments-0.1.2, jupyterlab_widgets-1.0.0, matplotlib-inline-0.1.2, mistune-0.8.4, nbclient-0.5.3, nbconvert-6.4.0, nbformat-5.1.3, nest_asyncio-1.5.1, notebook-6.4.0, pandocfilters-1.4.3, parso-0.8.2, pickleshare-0.7.5, prometheus_client-0.11.0, prompt_toolkit-3.0.19, pyzmq-22.2.1, Send2Trash-1.8.0, terminado-0.10.1, testpath-0.5.0, tornado-6.1, traitlets-5.0.5, widgetsnbextension-3.5.1]==])

local root = "/app/software/IPython/7.26.0-GCCcore-11.2.0"

conflict("IPython")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("ZeroMQ/4.3.4-GCCcore-11.2.0") ) then
    load("ZeroMQ/4.3.4-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIPYTHON", root)
setenv("EBVERSIONIPYTHON", "7.26.0")
setenv("EBDEVELIPYTHON", pathJoin(root, "logs/IPython-7.26.0-GCCcore-11.2.0-easybuild-devel"))

prepend_path("JUPYTER_PATH", pathJoin(root, "share/jupyter"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTIPYTHON", "ipython_genutils-0.2.0,ipython-7.26.0,pickleshare-0.7.5,prompt_toolkit-3.0.19,traitlets-5.0.5,parso-0.8.2,jedi-0.18.0,testpath-0.5.0,Send2Trash-1.8.0,bleach-4.0.0,pandocfilters-1.4.3,pyzmq-22.2.1,entrypoints-0.3,jupyter_core-4.7.1,nbformat-5.1.3,mistune-0.8.4,defusedxml-0.7.1,jupyterlab_pygments-0.1.2,async_generator-1.10,nest_asyncio-1.5.1,nbclient-0.5.3,nbconvert-6.4.0,tornado-6.1,terminado-0.10.1,jupyter_client-6.1.12,backcall-0.2.0,ipykernel-6.0.3,prometheus_client-0.11.0,ipywidgets-7.6.3,deprecation-2.1.0,jupyter_packaging-0.10.4,jupyterlab_widgets-1.0.0,argon2-cffi-20.1.0,notebook-6.4.0,widgetsnbextension-3.5.1,matplotlib-inline-0.1.2,debugpy-1.4.1")
