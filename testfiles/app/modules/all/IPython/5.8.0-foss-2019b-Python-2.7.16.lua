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
attrs-19.1.0, backcall-0.1.0, backports.shutil_get_terminal_size-1.0.0,
backports_abc-0.5, bleach-3.1.0, certifi-2018.11.29, configparser-3.5.0,
defusedxml-0.5.0, entrypoints-0.3, functools32-3.2.3-2, futures-3.2.0,
html5lib-1.0.1, ipykernel-4.10.0, ipython-5.8.0, ipython_genutils-0.2.0,
ipywidgets-7.4.2, jedi-0.13.1, Jinja2-2.10, jsonschema-3.0.1,
jupyter_client-5.2.4, jupyter_core-4.4.0, MarkupSafe-1.1.1, mistune-0.8.4,
nbconvert-5.4.1, nbformat-4.4.0, nose-1.3.7, notebook-5.7.4,
pandocfilters-1.4.2, parso-0.3.4, pathlib2-2.3.3, pexpect-4.6.0,
pickleshare-0.7.5, prometheus_client-0.6.0, prompt_toolkit-1.0.15,
ptyprocess-0.6.0, Pygments-2.3.1, pyrsistent-0.14.11, pyzmq-18.0.0,
scandir-1.9.0, Send2Trash-1.5.0, simplegeneric-0.8.1, singledispatch-3.4.0.3,
terminado-0.8.1, testpath-0.4.2, tornado-5.1.1, traitlets-4.3.2,
vcversioner-2.16.0.0, wcwidth-0.1.7, webencodings-0.5.1,
widgetsnbextension-3.4.2
]==])

whatis([==[Description: IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.]==])
whatis([==[Homepage: https://ipython.org/index.html]==])
whatis([==[URL: https://ipython.org/index.html]==])
whatis([==[Extensions: attrs-19.1.0, backcall-0.1.0, backports.shutil_get_terminal_size-1.0.0, backports_abc-0.5, bleach-3.1.0, certifi-2018.11.29, configparser-3.5.0, defusedxml-0.5.0, entrypoints-0.3, functools32-3.2.3-2, futures-3.2.0, html5lib-1.0.1, ipykernel-4.10.0, ipython-5.8.0, ipython_genutils-0.2.0, ipywidgets-7.4.2, jedi-0.13.1, Jinja2-2.10, jsonschema-3.0.1, jupyter_client-5.2.4, jupyter_core-4.4.0, MarkupSafe-1.1.1, mistune-0.8.4, nbconvert-5.4.1, nbformat-4.4.0, nose-1.3.7, notebook-5.7.4, pandocfilters-1.4.2, parso-0.3.4, pathlib2-2.3.3, pexpect-4.6.0, pickleshare-0.7.5, prometheus_client-0.6.0, prompt_toolkit-1.0.15, ptyprocess-0.6.0, Pygments-2.3.1, pyrsistent-0.14.11, pyzmq-18.0.0, scandir-1.9.0, Send2Trash-1.5.0, simplegeneric-0.8.1, singledispatch-3.4.0.3, terminado-0.8.1, testpath-0.4.2, tornado-5.1.1, traitlets-4.3.2, vcversioner-2.16.0.0, wcwidth-0.1.7, webencodings-0.5.1, widgetsnbextension-3.4.2]==])

local root = "/app/software/IPython/5.8.0-foss-2019b-Python-2.7.16"

conflict("IPython")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("ZeroMQ/4.3.2-GCCcore-8.3.0") ) then
    load("ZeroMQ/4.3.2-GCCcore-8.3.0")
end

if not ( isloaded("matplotlib/2.2.5-foss-2019b-Python-2.7.16") ) then
    load("matplotlib/2.2.5-foss-2019b-Python-2.7.16")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIPYTHON", root)
setenv("EBVERSIONIPYTHON", "5.8.0")
setenv("EBDEVELIPYTHON", pathJoin(root, "logs/IPython-5.8.0-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.3
setenv("EBEXTSLISTIPYTHON", "Pygments-2.3.1,ipython_genutils-0.2.0,ipython-5.8.0,certifi-2018.11.29,pexpect-4.6.0,scandir-1.9.0,pathlib2-2.3.3,pickleshare-0.7.5,wcwidth-0.1.7,prompt_toolkit-1.0.15,ptyprocess-0.6.0,simplegeneric-0.8.1,traitlets-4.3.2,parso-0.3.4,jedi-0.13.1,testpath-0.4.2,nose-1.3.7,configparser-3.5.0,defusedxml-0.5.0,nbconvert-5.4.1,nbformat-4.4.0,MarkupSafe-1.1.1,ipywidgets-7.4.2,Jinja2-2.10,Send2Trash-1.5.0,webencodings-0.5.1,html5lib-1.0.1,bleach-3.1.0,pyrsistent-0.14.11,functools32-3.2.3-2,attrs-19.1.0,vcversioner-2.16.0.0,jsonschema-3.0.1,pandocfilters-1.4.2,pyzmq-18.0.0,entrypoints-0.3,jupyter_core-4.4.0,mistune-0.8.4,terminado-0.8.1,futures-3.2.0,singledispatch-3.4.0.3,backports_abc-0.5,backports.shutil_get_terminal_size-1.0.0,tornado-5.1.1,jupyter_client-5.2.4,backcall-0.1.0,ipykernel-4.10.0,prometheus_client-0.6.0,notebook-5.7.4,widgetsnbextension-3.4.2")
