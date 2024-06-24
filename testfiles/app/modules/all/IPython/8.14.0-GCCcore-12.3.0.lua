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
asttokens-2.2.1, backcall-0.2.0, executing-1.2.0, ipython-8.14.0, jedi-0.19.0,
matplotlib-inline-0.1.6, parso-0.8.3, pickleshare-0.7.5,
prompt_toolkit-3.0.39, pure_eval-0.2.2, stack_data-0.6.2, traitlets-5.9.0
]==])

whatis([==[Description: IPython provides a rich architecture for interactive computing with:
 Powerful interactive shells (terminal and Qt-based).
 A browser-based notebook with support for code, text, mathematical expressions, inline plots and other rich media.
 Support for interactive data visualization and use of GUI toolkits.
 Flexible, embeddable interpreters to load into your own projects.
 Easy to use, high performance tools for parallel computing.]==])
whatis([==[Homepage: https://ipython.org/index.html]==])
whatis([==[URL: https://ipython.org/index.html]==])
whatis([==[Extensions: asttokens-2.2.1, backcall-0.2.0, executing-1.2.0, ipython-8.14.0, jedi-0.19.0, matplotlib-inline-0.1.6, parso-0.8.3, pickleshare-0.7.5, prompt_toolkit-3.0.39, pure_eval-0.2.2, stack_data-0.6.2, traitlets-5.9.0]==])

local root = "/app/software/IPython/8.14.0-GCCcore-12.3.0"

conflict("IPython")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Python-bundle-PyPI/2023.06-GCCcore-12.3.0") ) then
    load("Python-bundle-PyPI/2023.06-GCCcore-12.3.0")
end

if not ( isloaded("ZeroMQ/4.3.4-GCCcore-12.3.0") ) then
    load("ZeroMQ/4.3.4-GCCcore-12.3.0")
end

if not ( isloaded("lxml/4.9.2-GCCcore-12.3.0") ) then
    load("lxml/4.9.2-GCCcore-12.3.0")
end

if not ( isloaded("BeautifulSoup/4.12.2-GCCcore-12.3.0") ) then
    load("BeautifulSoup/4.12.2-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTIPYTHON", root)
setenv("EBVERSIONIPYTHON", "8.14.0")
setenv("EBDEVELIPYTHON", pathJoin(root, "logs/IPython-8.14.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTIPYTHON", "traitlets-5.9.0,pure_eval-0.2.2,executing-1.2.0,asttokens-2.2.1,stack_data-0.6.2,prompt_toolkit-3.0.39,pickleshare-0.7.5,matplotlib-inline-0.1.6,parso-0.8.3,jedi-0.19.0,backcall-0.2.0,ipython-8.14.0")
