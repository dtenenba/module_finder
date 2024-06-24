help([==[

Description
===========
GitPython is a python library used to interact with Git repositories


More information
================
 - Homepage: https://gitpython.readthedocs.org


Included extensions
===================
gitdb-4.0.9, GitPython-3.1.24, smmap-5.0.0
]==])

whatis([==[Description:  GitPython is a python library used to interact with Git repositories ]==])
whatis([==[Homepage: https://gitpython.readthedocs.org]==])
whatis([==[URL: https://gitpython.readthedocs.org]==])
whatis([==[Extensions: gitdb-4.0.9, GitPython-3.1.24, smmap-5.0.0]==])

local root = "/app/software/GitPython/3.1.24-GCCcore-11.2.0"

conflict("GitPython")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("git/2.33.1-GCCcore-11.2.0-nodocs") ) then
    load("git/2.33.1-GCCcore-11.2.0-nodocs")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTGITPYTHON", root)
setenv("EBVERSIONGITPYTHON", "3.1.24")
setenv("EBDEVELGITPYTHON", pathJoin(root, "logs/GitPython-3.1.24-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.1
setenv("EBEXTSLISTGITPYTHON", "smmap-5.0.0,gitdb-4.0.9,GitPython-3.1.24")
