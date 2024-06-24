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
]==])

whatis([==[Description: This project is meant as a zero configuration
replacement for setuptools-rust and milksnake. It supports building
wheels for python 3.5+ on windows, linux, mac and freebsd, can upload
them to pypi and has basic pypy and graalpy support.]==])
whatis([==[Homepage: https://github.com/pyo3/maturin]==])
whatis([==[URL: https://github.com/pyo3/maturin]==])

local root = "/app/software/maturin/1.1.0-GCCcore-12.3.0"

conflict("maturin")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

if not ( isloaded("Rust/1.70.0-GCCcore-12.3.0") ) then
    load("Rust/1.70.0-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMATURIN", root)
setenv("EBVERSIONMATURIN", "1.1.0")
setenv("EBDEVELMATURIN", pathJoin(root, "logs/maturin-1.1.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
