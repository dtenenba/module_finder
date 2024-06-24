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
argon2-cffi-20.1.0, asttokens-2.0.8, async_generator-1.10, backcall-0.2.0,
bleach-5.0.1, debugpy-1.4.1, defusedxml-0.7.1, deprecation-2.1.0,
entrypoints-0.4, executing-1.0.0, fastjsonschema-2.16.1, ipykernel-6.13.0,
ipython-8.5.0, ipython_genutils-0.2.0, ipywidgets-7.7.4, jedi-0.18.1,
jupyter_client-7.3.1, jupyter_core-4.10.0, jupyter_packaging-0.12.0,
jupyterlab_pygments-0.1.2, jupyterlab_widgets-1.1.3, matplotlib-inline-0.1.2,
mistune-0.8.1, nbclient-0.6.3, nbconvert-6.5.3, nbformat-5.4.0,
nest_asyncio-1.5.5, notebook-6.4.0, pandocfilters-1.5.0, parso-0.8.3,
pickleshare-0.7.5, prometheus_client-0.11.0, prompt_toolkit-3.0.31,
pure_eval-0.2.2, pyzmq-23.2.1, Send2Trash-1.8.0, stack_data-0.5.0,
terminado-0.13.0, testpath-0.6.0, tinycss2-1.1.1, tornado-6.2,
traitlets-5.2.1.post0, widgetsnbextension-3.6.3
]==])

whatis([==[Description: IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.]==])
whatis([==[Homepage: https://ipython.org/index.html]==])
whatis([==[URL: https://ipython.org/index.html]==])
whatis([==[Extensions: argon2-cffi-20.1.0, asttokens-2.0.8, async_generator-1.10, backcall-0.2.0, bleach-5.0.1, debugpy-1.4.1, defusedxml-0.7.1, deprecation-2.1.0, entrypoints-0.4, executing-1.0.0, fastjsonschema-2.16.1, ipykernel-6.13.0, ipython-8.5.0, ipython_genutils-0.2.0, ipywidgets-7.7.4, jedi-0.18.1, jupyter_client-7.3.1, jupyter_core-4.10.0, jupyter_packaging-0.12.0, jupyterlab_pygments-0.1.2, jupyterlab_widgets-1.1.3, matplotlib-inline-0.1.2, mistune-0.8.1, nbclient-0.6.3, nbconvert-6.5.3, nbformat-5.4.0, nest_asyncio-1.5.5, notebook-6.4.0, pandocfilters-1.5.0, parso-0.8.3, pickleshare-0.7.5, prometheus_client-0.11.0, prompt_toolkit-3.0.31, pure_eval-0.2.2, pyzmq-23.2.1, Send2Trash-1.8.0, stack_data-0.5.0, terminado-0.13.0, testpath-0.6.0, tinycss2-1.1.1, tornado-6.2, traitlets-5.2.1.post0, widgetsnbextension-3.6.3]==])

local root = "/app/software/IPython/8.5.0-GCCcore-11.3.0"

conflict("IPython")

if not ( isloaded("GCCcore/11.3.0") ) then
    load("GCCcore/11.3.0")
end

if not ( isloaded("Python/3.10.4-GCCcore-11.3.0") ) then
    load("Python/3.10.4-GCCcore-11.3.0")
end

if not ( isloaded("ZeroMQ/4.3.4-GCCcore-11.3.0") ) then
    load("ZeroMQ/4.3.4-GCCcore-11.3.0")
end

if not ( isloaded("lxml/4.9.1-GCCcore-11.3.0") ) then
    load("lxml/4.9.1-GCCcore-11.3.0")
end

if not ( isloaded("BeautifulSoup/4.10.0-GCCcore-11.3.0") ) then
    load("BeautifulSoup/4.10.0-GCCcore-11.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIPYTHON", root)
setenv("EBVERSIONIPYTHON", "8.5.0")
setenv("EBDEVELIPYTHON", pathJoin(root, "logs/IPython-8.5.0-GCCcore-11.3.0-easybuild-devel"))

prepend_path("JUPYTER_PATH", pathJoin(root, "share/jupyter"))
prepend_path("JUPYTER_CONFIG_PATH", pathJoin(root, "etc/jupyter"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.9.1
setenv("EBEXTSLISTIPYTHON", "ipython_genutils-0.2.0,ipython-8.5.0,pickleshare-0.7.5,prompt_toolkit-3.0.31,traitlets-5.2.1.post0,parso-0.8.3,jedi-0.18.1,testpath-0.6.0,Send2Trash-1.8.0,bleach-5.0.1,pandocfilters-1.5.0,pyzmq-23.2.1,entrypoints-0.4,jupyter_core-4.10.0,fastjsonschema-2.16.1,nbformat-5.4.0,mistune-0.8.1,defusedxml-0.7.1,async_generator-1.10,nest_asyncio-1.5.5,nbclient-0.6.3,tinycss2-1.1.1,nbconvert-6.5.3,tornado-6.2,terminado-0.13.0,jupyter_client-7.3.1,backcall-0.2.0,executing-1.0.0,asttokens-2.0.8,pure_eval-0.2.2,stack_data-0.5.0,ipykernel-6.13.0,prometheus_client-0.11.0,ipywidgets-7.7.4,deprecation-2.1.0,jupyter_packaging-0.12.0,jupyterlab_pygments-0.1.2,jupyterlab_widgets-1.1.3,argon2-cffi-20.1.0,notebook-6.4.0,widgetsnbextension-3.6.3,matplotlib-inline-0.1.2,debugpy-1.4.1")
