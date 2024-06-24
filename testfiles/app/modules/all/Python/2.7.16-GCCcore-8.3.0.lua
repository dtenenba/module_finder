help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: https://python.org/


Included extensions
===================
alabaster-0.7.12, asn1crypto-0.24.0, atomicwrites-1.3.0, attrs-19.1.0,
Babel-2.7.0, bcrypt-3.1.7, bitstring-3.1.6, blist-1.3.6, certifi-2019.9.11,
cffi-1.12.3, chardet-3.0.4, Click-7.0, configparser-4.0.2, contextlib2-0.5.5,
cryptography-2.7, Cython-0.29.13, deap-1.3.0, decorator-4.4.0, docopt-0.6.2,
docutils-0.15.2, ecdsa-0.13.2, enum34-1.1.6, funcsigs-1.0.2, future-0.17.1,
idna-2.8, imagesize-1.1.0, importlib_metadata-0.22, ipaddress-1.0.22,
Jinja2-2.10.1, joblib-0.13.2, liac-arff-2.4.0, MarkupSafe-1.1.1, mock-3.0.5,
more-itertools-5.0.0, netaddr-0.7.19, netifaces-0.10.9, nose-1.3.7,
packaging-19.1, paramiko-2.6.0, pathlib2-2.3.4, paycheck-1.0.2, pbr-5.4.3,
pip-19.2.3, pluggy-0.13.0, psutil-5.6.3, py-1.8.0, py_expression_eval-0.3.9,
pyasn1-0.4.7, pycparser-2.19, pycrypto-2.6.1, Pygments-2.4.2, PyNaCl-1.3.0,
pyparsing-2.4.2, pytest-4.6.5, python-dateutil-2.8.0, pytz-2019.2,
requests-2.22.0, scandir-1.10.0, setuptools-41.2.0, setuptools_scm-3.3.3,
singledispatch-3.4.0.3, six-1.12.0, snowballstemmer-1.9.1, Sphinx-1.8.5,
sphinxcontrib-websupport-1.1.2, tabulate-0.8.3, typing-3.7.4.1, ujson-1.35,
urllib3-1.25.3, virtualenv-16.7.5, wcwidth-0.1.7, wheel-0.33.6, xlrd-1.2.0,
zipp-0.6.0
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: alabaster-0.7.12, asn1crypto-0.24.0, atomicwrites-1.3.0, attrs-19.1.0, Babel-2.7.0, bcrypt-3.1.7, bitstring-3.1.6, blist-1.3.6, certifi-2019.9.11, cffi-1.12.3, chardet-3.0.4, Click-7.0, configparser-4.0.2, contextlib2-0.5.5, cryptography-2.7, Cython-0.29.13, deap-1.3.0, decorator-4.4.0, docopt-0.6.2, docutils-0.15.2, ecdsa-0.13.2, enum34-1.1.6, funcsigs-1.0.2, future-0.17.1, idna-2.8, imagesize-1.1.0, importlib_metadata-0.22, ipaddress-1.0.22, Jinja2-2.10.1, joblib-0.13.2, liac-arff-2.4.0, MarkupSafe-1.1.1, mock-3.0.5, more-itertools-5.0.0, netaddr-0.7.19, netifaces-0.10.9, nose-1.3.7, packaging-19.1, paramiko-2.6.0, pathlib2-2.3.4, paycheck-1.0.2, pbr-5.4.3, pip-19.2.3, pluggy-0.13.0, psutil-5.6.3, py-1.8.0, py_expression_eval-0.3.9, pyasn1-0.4.7, pycparser-2.19, pycrypto-2.6.1, Pygments-2.4.2, PyNaCl-1.3.0, pyparsing-2.4.2, pytest-4.6.5, python-dateutil-2.8.0, pytz-2019.2, requests-2.22.0, scandir-1.10.0, setuptools-41.2.0, setuptools_scm-3.3.3, singledispatch-3.4.0.3, six-1.12.0, snowballstemmer-1.9.1, Sphinx-1.8.5, sphinxcontrib-websupport-1.1.2, tabulate-0.8.3, typing-3.7.4.1, ujson-1.35, urllib3-1.25.3, virtualenv-16.7.5, wcwidth-0.1.7, wheel-0.33.6, xlrd-1.2.0, zipp-0.6.0]==])

local root = "/app/software/Python/2.7.16-GCCcore-8.3.0"

conflict("Python")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("binutils/2.32-GCCcore-8.3.0") ) then
    load("binutils/2.32-GCCcore-8.3.0")
end

if not ( isloaded("bzip2/1.0.8-GCCcore-8.3.0") ) then
    load("bzip2/1.0.8-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("libreadline/8.0-GCCcore-8.3.0") ) then
    load("libreadline/8.0-GCCcore-8.3.0")
end

if not ( isloaded("ncurses/6.1-GCCcore-8.3.0") ) then
    load("ncurses/6.1-GCCcore-8.3.0")
end

if not ( isloaded("SQLite/3.29.0-GCCcore-8.3.0") ) then
    load("SQLite/3.29.0-GCCcore-8.3.0")
end

if not ( isloaded("GMP/6.1.2-GCCcore-8.3.0") ) then
    load("GMP/6.1.2-GCCcore-8.3.0")
end

if not ( isloaded("libffi/3.2.1-GCCcore-8.3.0") ) then
    load("libffi/3.2.1-GCCcore-8.3.0")
end

prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "2.7.16")
setenv("EBDEVELPYTHON", pathJoin(root, "logs/Python-2.7.16-GCCcore-8.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "logs/python"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTPYTHON", "setuptools-41.2.0,pip-19.2.3,wheel-0.33.6,nose-1.3.7,blist-1.3.6,paycheck-1.0.2,pbr-5.4.3,Cython-0.29.13,six-1.12.0,setuptools_scm-3.3.3,python-dateutil-2.8.0,deap-1.3.0,decorator-4.4.0,liac-arff-2.4.0,pycrypto-2.6.1,ecdsa-0.13.2,enum34-1.1.6,ipaddress-1.0.22,asn1crypto-0.24.0,idna-2.8,pycparser-2.19,cffi-1.12.3,cryptography-2.7,pyasn1-0.4.7,PyNaCl-1.3.0,bcrypt-3.1.7,paramiko-2.6.0,pyparsing-2.4.2,netifaces-0.10.9,netaddr-0.7.19,funcsigs-1.0.2,mock-3.0.5,pytz-2019.2,bitstring-3.1.6,virtualenv-16.7.5,docopt-0.6.2,joblib-0.13.2,chardet-3.0.4,certifi-2019.9.11,urllib3-1.25.3,requests-2.22.0,xlrd-1.2.0,py_expression_eval-0.3.9,tabulate-0.8.3,ujson-1.35,atomicwrites-1.3.0,py-1.8.0,scandir-1.10.0,pathlib2-2.3.4,zipp-0.6.0,configparser-4.0.2,contextlib2-0.5.5,importlib_metadata-0.22,pluggy-0.13.0,more-itertools-5.0.0,attrs-19.1.0,wcwidth-0.1.7,pytest-4.6.5,MarkupSafe-1.1.1,Jinja2-2.10.1,packaging-19.1,sphinxcontrib-websupport-1.1.2,Pygments-2.4.2,imagesize-1.1.0,docutils-0.15.2,snowballstemmer-1.9.1,Babel-2.7.0,alabaster-0.7.12,typing-3.7.4.1,Sphinx-1.8.5,Click-7.0,psutil-5.6.3,future-0.17.1,singledispatch-3.4.0.3")
