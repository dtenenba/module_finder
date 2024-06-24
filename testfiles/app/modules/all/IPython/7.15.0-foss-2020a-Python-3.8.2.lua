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
backcall-0.1.0, bleach-3.1.5, defusedxml-0.6.0, entrypoints-0.3,
html5lib-1.0.1, ipykernel-5.3.0, ipython-7.15.0, ipython_genutils-0.2.0,
ipywidgets-7.5.1, jedi-0.17.0, jsonschema-3.2.0, jupyter_client-6.1.3,
jupyter_contrib_core-0.3.3, jupyter_core-4.6.3,
jupyter_nbextensions_configurator-0.4.1, mistune-0.8.4, nbconvert-5.6.1,
nbformat-5.0.6, notebook-6.0.3, pandocfilters-1.4.2, parso-0.7.0,
pexpect-4.8.0, pickleshare-0.7.5, prometheus_client-0.8.0,
prompt_toolkit-3.0.5, ptyprocess-0.6.0, pyrsistent-0.16.0, pyzmq-19.0.1,
Send2Trash-1.5.0, simplegeneric-0.8.1, terminado-0.8.3, testpath-0.4.4,
tornado-6.0.4, traitlets-4.3.3, vcversioner-2.16.0.0, wcwidth-0.1.9,
webencodings-0.5.1, widgetsnbextension-3.5.1
]==])

whatis([==[Description: IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.]==])
whatis([==[Homepage: https://ipython.org/index.html]==])
whatis([==[URL: https://ipython.org/index.html]==])
whatis([==[Extensions: backcall-0.1.0, bleach-3.1.5, defusedxml-0.6.0, entrypoints-0.3, html5lib-1.0.1, ipykernel-5.3.0, ipython-7.15.0, ipython_genutils-0.2.0, ipywidgets-7.5.1, jedi-0.17.0, jsonschema-3.2.0, jupyter_client-6.1.3, jupyter_contrib_core-0.3.3, jupyter_core-4.6.3, jupyter_nbextensions_configurator-0.4.1, mistune-0.8.4, nbconvert-5.6.1, nbformat-5.0.6, notebook-6.0.3, pandocfilters-1.4.2, parso-0.7.0, pexpect-4.8.0, pickleshare-0.7.5, prometheus_client-0.8.0, prompt_toolkit-3.0.5, ptyprocess-0.6.0, pyrsistent-0.16.0, pyzmq-19.0.1, Send2Trash-1.5.0, simplegeneric-0.8.1, terminado-0.8.3, testpath-0.4.4, tornado-6.0.4, traitlets-4.3.3, vcversioner-2.16.0.0, wcwidth-0.1.9, webencodings-0.5.1, widgetsnbextension-3.5.1]==])

local root = "/app/software/IPython/7.15.0-foss-2020a-Python-3.8.2"

conflict("IPython")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("ZeroMQ/4.3.2-GCCcore-9.3.0") ) then
    load("ZeroMQ/4.3.2-GCCcore-9.3.0")
end

if not ( isloaded("matplotlib/3.2.1-foss-2020a-Python-3.8.2") ) then
    load("matplotlib/3.2.1-foss-2020a-Python-3.8.2")
end

if not ( isloaded("PyYAML/5.3-GCCcore-9.3.0") ) then
    load("PyYAML/5.3-GCCcore-9.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIPYTHON", root)
setenv("EBVERSIONIPYTHON", "7.15.0")
setenv("EBDEVELIPYTHON", pathJoin(root, "logs/IPython-7.15.0-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTIPYTHON", "ipython_genutils-0.2.0,ipython-7.15.0,pexpect-4.8.0,pickleshare-0.7.5,wcwidth-0.1.9,prompt_toolkit-3.0.5,ptyprocess-0.6.0,simplegeneric-0.8.1,traitlets-4.3.3,parso-0.7.0,jedi-0.17.0,testpath-0.4.4,Send2Trash-1.5.0,webencodings-0.5.1,html5lib-1.0.1,bleach-3.1.5,vcversioner-2.16.0.0,jsonschema-3.2.0,pandocfilters-1.4.2,pyzmq-19.0.1,entrypoints-0.3,jupyter_core-4.6.3,nbformat-5.0.6,mistune-0.8.4,defusedxml-0.6.0,nbconvert-5.6.1,terminado-0.8.3,tornado-6.0.4,jupyter_client-6.1.3,backcall-0.1.0,ipykernel-5.3.0,prometheus_client-0.8.0,pyrsistent-0.16.0,ipywidgets-7.5.1,jupyter_contrib_core-0.3.3,jupyter_nbextensions_configurator-0.4.1,notebook-6.0.3,widgetsnbextension-3.5.1")
