help([==[

Description
===========
GitPython is a python library used to interact with Git repositories


More information
================
 - Homepage: https://github.com/gitpython-developers/GitPython


Included extensions
===================
gitdb-4.0.2, GitPython-3.1.0, smmap-3.0.1
]==])

whatis([==[Description:  GitPython is a python library used to interact with Git repositories ]==])
whatis([==[Homepage: https://github.com/gitpython-developers/GitPython]==])
whatis([==[URL: https://github.com/gitpython-developers/GitPython]==])
whatis([==[Extensions: gitdb-4.0.2, GitPython-3.1.0, smmap-3.0.1]==])

local root = "/app/software/GitPython/3.1.0-GCCcore-8.3.0-Python-3.7.4"

conflict("GitPython")

if not ( isloaded("GCCcore/8.3.0") ) then
    load("GCCcore/8.3.0")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGITPYTHON", root)
setenv("EBVERSIONGITPYTHON", "3.1.0")
setenv("EBDEVELGITPYTHON", pathJoin(root, "logs/GitPython-3.1.0-GCCcore-8.3.0-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTGITPYTHON", "smmap-3.0.1,gitdb-4.0.2,GitPython-3.1.0")
