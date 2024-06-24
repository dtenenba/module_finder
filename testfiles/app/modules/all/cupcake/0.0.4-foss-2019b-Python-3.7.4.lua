help([==[

Description
===========
Cupcake is a thin layer over CMake and Conan that tries to offer a better user experience in the style of Yarn or Poetry.


More information
================
 - Homepage: https://github.com/thejohnfreeman/cupcake


Included extensions
===================
cached-property-1.5.1, click-7.1.2, clikit-0.6.2, cmakelists_parsing-0.3.1,
conan-1.27.1, cupcake-0.0.4, pastel-0.2.0, pydantic-1.6.1, pyPEG2-2.15.2,
semantic-version-2.8.5, toolz-0.10.0
]==])

whatis([==[Description: Cupcake is a thin layer over CMake and Conan that tries to offer a better user experience in the style of Yarn or Poetry.]==])
whatis([==[Homepage: https://github.com/thejohnfreeman/cupcake]==])
whatis([==[URL: https://github.com/thejohnfreeman/cupcake]==])
whatis([==[Extensions: cached-property-1.5.1, click-7.1.2, clikit-0.6.2, cmakelists_parsing-0.3.1, conan-1.27.1, cupcake-0.0.4, pastel-0.2.0, pydantic-1.6.1, pyPEG2-2.15.2, semantic-version-2.8.5, toolz-0.10.0]==])

local root = "/app/software/cupcake/0.0.4-foss-2019b-Python-3.7.4"

conflict("cupcake")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCUPCAKE", root)
setenv("EBVERSIONCUPCAKE", "0.0.4")
setenv("EBDEVELCUPCAKE", pathJoin(root, "logs/cupcake-0.0.4-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.1
setenv("EBEXTSLISTCUPCAKE", "clikit-0.6.2,click-7.1.2,semantic-version-2.8.5,pyPEG2-2.15.2,cmakelists_parsing-0.3.1,cached-property-1.5.1,conan-1.27.1,toolz-0.10.0,pydantic-1.6.1,pastel-0.2.0,cupcake-0.0.4")
