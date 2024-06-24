help([==[

Description
===========
PLINKLiftOver is a utility enabling liftOver to work on genomics files from PLINK,
 allowing one to update the coordinates from one genome reference version to another.


More information
================
 - Homepage: https://github.com/milescsmith/plinkliftover


Included extensions
===================
plinkliftover-0.3.0, rich-10.16.2, typer-0.4.1, typing_extensions-4.4.0
]==])

whatis([==[Description: PLINKLiftOver is a utility enabling liftOver to work on genomics files from PLINK,
 allowing one to update the coordinates from one genome reference version to another.]==])
whatis([==[Homepage: https://github.com/milescsmith/plinkliftover]==])
whatis([==[URL: https://github.com/milescsmith/plinkliftover]==])
whatis([==[Extensions: plinkliftover-0.3.0, rich-10.16.2, typer-0.4.1, typing_extensions-4.4.0]==])

local root = "/app/software/plinkliftover/0.3.0-foss-2022b"

conflict("plinkliftover")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPLINKLIFTOVER", root)
setenv("EBVERSIONPLINKLIFTOVER", "0.3.0")
setenv("EBDEVELPLINKLIFTOVER", pathJoin(root, "logs/plinkliftover-0.3.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.2
setenv("EBEXTSLISTPLINKLIFTOVER", "typing_extensions-4.4.0,typer-0.4.1,rich-10.16.2,plinkliftover-0.3.0")
