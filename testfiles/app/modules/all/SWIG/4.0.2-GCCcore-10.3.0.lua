help([==[

Description
===========
SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.


More information
================
 - Homepage: http://www.swig.org/
]==])

whatis([==[Description: SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.]==])
whatis([==[Homepage: http://www.swig.org/]==])
whatis([==[URL: http://www.swig.org/]==])

local root = "/app/software/SWIG/4.0.2-GCCcore-10.3.0"

conflict("SWIG")

if not ( isloaded("GCCcore/10.3.0") ) then
    load("GCCcore/10.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-10.3.0") ) then
    load("zlib/1.2.11-GCCcore-10.3.0")
end

if not ( isloaded("PCRE/8.44-GCCcore-10.3.0") ) then
    load("PCRE/8.44-GCCcore-10.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSWIG", root)
setenv("EBVERSIONSWIG", "4.0.2")
setenv("EBDEVELSWIG", pathJoin(root, "logs/SWIG-4.0.2-GCCcore-10.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
