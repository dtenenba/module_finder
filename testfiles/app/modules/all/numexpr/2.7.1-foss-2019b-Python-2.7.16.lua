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

local root = "/app/software/numexpr/2.7.1-foss-2019b-Python-2.7.16"

conflict("numexpr")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/2.7.16-GCCcore-8.3.0") ) then
    load("Python/2.7.16-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-2.7.16") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-2.7.16")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNUMEXPR", root)
setenv("EBVERSIONNUMEXPR", "2.7.1")
setenv("EBDEVELNUMEXPR", pathJoin(root, "logs/numexpr-2.7.1-foss-2019b-Python-2.7.16-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python2.7/site-packages"))
-- Built with EasyBuild version 4.3.3
