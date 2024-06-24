help([==[

Description
===========
The Vienna RNA Package consists of a C code library and several
stand-alone programs for the prediction and comparison of RNA secondary structures.


More information
================
 - Homepage: https://www.tbi.univie.ac.at/RNA/
]==])

whatis([==[Description: The Vienna RNA Package consists of a C code library and several
stand-alone programs for the prediction and comparison of RNA secondary structures.]==])
whatis([==[Homepage: https://www.tbi.univie.ac.at/RNA/]==])
whatis([==[URL: https://www.tbi.univie.ac.at/RNA/]==])

local root = "/app/software/ViennaRNA/2.5.1-foss-2021b"

conflict("ViennaRNA")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("Perl/5.34.0-GCCcore-11.2.0") ) then
    load("Perl/5.34.0-GCCcore-11.2.0")
end

if not ( isloaded("GSL/2.7-GCC-11.2.0") ) then
    load("GSL/2.7-GCC-11.2.0")
end

if not ( isloaded("libgd/2.3.3-GCCcore-11.2.0") ) then
    load("libgd/2.3.3-GCCcore-11.2.0")
end

if not ( isloaded("X11/20210802-GCCcore-11.2.0") ) then
    load("X11/20210802-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTVIENNARNA", root)
setenv("EBVERSIONVIENNARNA", "2.5.1")
setenv("EBDEVELVIENNARNA", pathJoin(root, "logs/ViennaRNA-2.5.1-foss-2021b-easybuild-devel"))

prepend_path("PERL5LIB", pathJoin(root, "lib/perl5/site_perl/5.34.0/"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.6.0
