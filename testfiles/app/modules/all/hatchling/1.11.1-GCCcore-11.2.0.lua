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
hatchling-1.11.1, packaging-21.3, pathspec-0.10.1, setuptools_scm-6.4.0,
trove_classifiers-2023.5.24, typing_extensions-4.3.0
]==])

whatis([==[Description: Extensible, standards compliant build backend used by Hatch,
a modern, extensible Python project manager.]==])
whatis([==[Homepage: https://hatch.pypa.io]==])
whatis([==[URL: https://hatch.pypa.io]==])
whatis([==[Extensions: editables-0.3, hatch_fancy_pypi_readme-23.1.0, hatch_vcs-0.3.0, hatchling-1.11.1, packaging-21.3, pathspec-0.10.1, setuptools_scm-6.4.0, trove_classifiers-2023.5.24, typing_extensions-4.3.0]==])

local root = "/app/software/hatchling/1.11.1-GCCcore-11.2.0"

conflict("hatchling")

if not ( isloaded("GCCcore/11.2.0") ) then
    load("GCCcore/11.2.0")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("pytest/7.1.3-GCCcore-11.2.0") ) then
    load("pytest/7.1.3-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHATCHLING", root)
setenv("EBVERSIONHATCHLING", "1.11.1")
setenv("EBDEVELHATCHLING", pathJoin(root, "logs/hatchling-1.11.1-GCCcore-11.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTHATCHLING", "packaging-21.3,setuptools_scm-6.4.0,typing_extensions-4.3.0,pathspec-0.10.1,editables-0.3,trove_classifiers-2023.5.24,hatchling-1.11.1,hatch_vcs-0.3.0,hatch_fancy_pypi_readme-23.1.0")
