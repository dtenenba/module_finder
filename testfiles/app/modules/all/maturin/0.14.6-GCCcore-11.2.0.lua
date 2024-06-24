help([==[

Description
===========
This project is meant as a zero configuration
replacement for setuptools-rust and milksnake. It supports building
wheels for python 3.5+ on windows, linux, mac and freebsd, can upload
them to pypi and has basic pypy and graalpy support.


More information
================
 - Homepage: https://github.com/pyo3/maturin


Included extensions
===================
maturin-0.14.6, setuptools-65.6.3, setuptools-rust-1.5.2, tomli-2.0.1
]==])

whatis([==[Description: This project is meant as a zero configuration
replacement for setuptools-rust and milksnake. It supports building
wheels for python 3.5+ on windows, linux, mac and freebsd, can upload
them to pypi and has basic pypy and graalpy support.]==])
whatis([==[Homepage: https://github.com/pyo3/maturin]==])
whatis([==[URL: https://github.com/pyo3/maturin]==])
whatis([==[Extensions: maturin-0.14.6, setuptools-65.6.3, setuptools-rust-1.5.2, tomli-2.0.1]==])

local root = "/app/software/maturin/0.14.6-GCCcore-11.2.0"

conflict("maturin")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Rust/1.65.0-GCCcore-11.2.0") ) then
    load("Rust/1.65.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMATURIN", root)
setenv("EBVERSIONMATURIN", "0.14.6")
setenv("EBDEVELMATURIN", pathJoin(root, "logs/maturin-0.14.6-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTMATURIN", "setuptools-65.6.3,setuptools-rust-1.5.2,tomli-2.0.1,maturin-0.14.6")
