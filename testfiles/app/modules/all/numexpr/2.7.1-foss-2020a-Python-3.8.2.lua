help([==[

Description
===========
The numexpr package evaluates multiple-operator array expressions many times faster than NumPy can.
 It accepts the expression as a string, analyzes it, rewrites it more efficiently, and compiles it on the fly into
 code for its internal virtual machine (VM). Due to its integrated just-in-time (JIT) compiler, it does not require a
 compiler at runtime.


More information
================
 - Homepage: https://numexpr.readthedocs.io/en/latest/
]==])

whatis([==[Description: The numexpr package evaluates multiple-operator array expressions many times faster than NumPy can.
 It accepts the expression as a string, analyzes it, rewrites it more efficiently, and compiles it on the fly into
 code for its internal virtual machine (VM). Due to its integrated just-in-time (JIT) compiler, it does not require a
 compiler at runtime.]==])
whatis([==[Homepage: https://numexpr.readthedocs.io/en/latest/]==])
whatis([==[URL: https://numexpr.readthedocs.io/en/latest/]==])

local root = "/app/software/numexpr/2.7.1-foss-2020a-Python-3.8.2"

conflict("numexpr")

if not ( isloaded("foss/2020a") ) then
    load("foss/2020a")
end

if not ( isloaded("Python/3.8.2-GCCcore-9.3.0") ) then
    load("Python/3.8.2-GCCcore-9.3.0")
end

if not ( isloaded("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2") ) then
    load("SciPy-bundle/2020.03-foss-2020a-Python-3.8.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNUMEXPR", root)
setenv("EBVERSIONNUMEXPR", "2.7.1")
setenv("EBDEVELNUMEXPR", pathJoin(root, "logs/numexpr-2.7.1-foss-2020a-Python-3.8.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.2.2
