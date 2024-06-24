help([==[

Description
===========
Boost.Python is a C++ library which enables seamless interoperability between C++
 and the Python programming language.


More information
================
 - Homepage: https://boostorg.github.io/python
]==])

whatis([==[Description: Boost.Python is a C++ library which enables seamless interoperability between C++
 and the Python programming language.]==])
whatis([==[Homepage: https://boostorg.github.io/python]==])
whatis([==[URL: https://boostorg.github.io/python]==])

local root = "/app/software/Boost.Python/1.64.0-gompi-2019b"

conflict("Boost.Python")

if not ( isloaded("gompi/2019b") ) then
    load("gompi/2019b")
end

if not ( isloaded("Boost/1.64.0-gompi-2019b") ) then
    load("Boost/1.64.0-gompi-2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOSTPYTHON", root)
setenv("EBVERSIONBOOSTPYTHON", "1.64.0")
setenv("EBDEVELBOOSTPYTHON", pathJoin(root, "logs/Boost.Python-1.64.0-gompi-2019b-easybuild-devel"))

-- Built with EasyBuild version 4.3.4
