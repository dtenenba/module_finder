help([==[

Description
===========
Garnett is a software package that faciliates automated cell type classification from single-cell expression data.


More information
================
 - Homepage: https://cole-trapnell-lab.github.io/garnett/


Included extensions
===================
Garnett-20220903, rly-1.7.4
]==])

whatis([==[Description: Garnett is a software package that faciliates automated cell type classification from single-cell expression data.]==])
whatis([==[Homepage: https://cole-trapnell-lab.github.io/garnett/]==])
whatis([==[URL: https://cole-trapnell-lab.github.io/garnett/]==])
whatis([==[Extensions: Garnett-20220903, rly-1.7.4]==])

local root = "/app/software/Garnett/20220903-foss-2021b-R-4.2.2"

conflict("Garnett")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("R/4.2.2-foss-2021b") ) then
    load("R/4.2.2-foss-2021b")
end

if not ( isloaded("fhR/4.2.2-foss-2021b") ) then
    load("fhR/4.2.2-foss-2021b")
end

if not ( isloaded("Monocle3/1.3.1-foss-2021b-R-4.2.2") ) then
    load("Monocle3/1.3.1-foss-2021b-R-4.2.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTGARNETT", root)
setenv("EBVERSIONGARNETT", "20220903")
setenv("EBDEVELGARNETT", pathJoin(root, "logs/Garnett-20220903-foss-2021b-R-4.2.2-easybuild-devel"))

prepend_path("R_LIBS_SITE", root)
-- Built with EasyBuild version 4.6.2
setenv("EBEXTSLISTGARNETT", "rly-1.7.4,Garnett-20220903")
