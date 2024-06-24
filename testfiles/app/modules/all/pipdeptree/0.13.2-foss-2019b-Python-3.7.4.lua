help([==[

Description
===========
pipdeptree is a command line utility for displaying the installed python packages in form of a dependency tree. It works for packages installed globally on a machine as well as in a virtualenv.


More information
================
 - Homepage: https://github.com/naiquevin/pipdeptree


Included extensions
===================
pipdeptree-0.13.2
]==])

whatis([==[Description: pipdeptree is a command line utility for displaying the installed python packages in form of a dependency tree. It works for packages installed globally on a machine as well as in a virtualenv.]==])
whatis([==[Homepage: https://github.com/naiquevin/pipdeptree]==])
whatis([==[URL: https://github.com/naiquevin/pipdeptree]==])
whatis([==[Extensions: pipdeptree-0.13.2]==])

local root = "/app/software/pipdeptree/0.13.2-foss-2019b-Python-3.7.4"

conflict("pipdeptree")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPIPDEPTREE", root)
setenv("EBVERSIONPIPDEPTREE", "0.13.2")
setenv("EBDEVELPIPDEPTREE", pathJoin(root, "logs/pipdeptree-0.13.2-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.1.2
setenv("EBEXTSLISTPIPDEPTREE", "pipdeptree-0.13.2")
