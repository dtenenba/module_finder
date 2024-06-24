help([==[

Description
===========
Extensible, standards compliant build backend used by Hatch,
a modern, extensible Python project manager.


More information
================
 - Homepage: https://hatch.pypa.io


Included extensions
===================
editables-0.3, hatch_fancy_pypi_readme-23.1.0, hatch_vcs-0.3.0,
hatchling-1.18.0, pathspec-0.11.1, pluggy-1.2.0, trove_classifiers-2023.5.24
]==])

whatis([==[Description: Extensible, standards compliant build backend used by Hatch,
a modern, extensible Python project manager.]==])
whatis([==[Homepage: https://hatch.pypa.io]==])
whatis([==[URL: https://hatch.pypa.io]==])
whatis([==[Extensions: editables-0.3, hatch_fancy_pypi_readme-23.1.0, hatch_vcs-0.3.0, hatchling-1.18.0, pathspec-0.11.1, pluggy-1.2.0, trove_classifiers-2023.5.24]==])

local root = "/app/software/hatchling/1.18.0-GCCcore-12.3.0"

conflict("hatchling")

if not ( isloaded("GCCcore/12.3.0") ) then
    load("GCCcore/12.3.0")
end

if not ( isloaded("Python/3.11.3-GCCcore-12.3.0") ) then
    load("Python/3.11.3-GCCcore-12.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHATCHLING", root)
setenv("EBVERSIONHATCHLING", "1.18.0")
setenv("EBDEVELHATCHLING", pathJoin(root, "logs/hatchling-1.18.0-GCCcore-12.3.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTHATCHLING", "pathspec-0.11.1,pluggy-1.2.0,editables-0.3,trove_classifiers-2023.5.24,hatchling-1.18.0,hatch_vcs-0.3.0,hatch_fancy_pypi_readme-23.1.0")
