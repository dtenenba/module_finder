help([==[

Description
===========
The numexpr package evaluates multiple-operator array expressions many times faster than NumPy can.
 It accepts the expression as a string, analyzes it, rewrites it more efficiently, and compiles it on the fly into
 code for its internal virtual machine (VM). Due to its integrated just-in-time (JIT) compiler, it does not require a
 compiler at runtime.


More information
================
 - Homepage: https://numexpr.readthedocs.io
]==])

whatis([==[Description: The numexpr package evaluates multiple-operator array expressions many times faster than NumPy can.
 It accepts the expression as a string, analyzes it, rewrites it more efficiently, and compiles it on the fly into
 code for its internal virtual machine (VM). Due to its integrated just-in-time (JIT) compiler, it does not require a
 compiler at runtime.]==])
whatis([==[Homepage: https://numexpr.readthedocs.io]==])
whatis([==[URL: https://numexpr.readthedocs.io]==])

local root = "/app/software/numexpr/2.7.0-foss-2019b"

conflict("numexpr")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

setenv("EBROOTNUMEXPR", root)
setenv("EBVERSIONNUMEXPR", "2.7.0")
setenv("EBDEVELNUMEXPR", pathJoin(root, "logs/numexpr-2.7.0-foss-2019b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
