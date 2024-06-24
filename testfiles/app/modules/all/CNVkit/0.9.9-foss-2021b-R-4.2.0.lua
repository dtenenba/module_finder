help([==[

Description
===========
A command-line toolkit and Python library for detecting copy
 number variants and alterations genome-wide from high-throughput sequencing.


More information
================
 - Homepage: https://github.com/etal/cnvkit


Included extensions
===================
CNVkit-0.9.9, pomegranate-0.14.8, reportlab-3.6.10
]==])

whatis([==[Description: A command-line toolkit and Python library for detecting copy
 number variants and alterations genome-wide from high-throughput sequencing.]==])
whatis([==[Homepage: https://github.com/etal/cnvkit]==])
whatis([==[URL: https://github.com/etal/cnvkit]==])
whatis([==[Extensions: CNVkit-0.9.9, pomegranate-0.14.8, reportlab-3.6.10]==])

local root = "/app/software/CNVkit/0.9.9-foss-2021b-R-4.2.0"

conflict("CNVkit")

if not ( isloaded("foss/2021b") ) then
    load("foss/2021b")
end

if not ( isloaded("Python/3.9.6-GCCcore-11.2.0") ) then
    load("Python/3.9.6-GCCcore-11.2.0")
end

if not ( isloaded("scikit-learn/1.0.1-foss-2021b") ) then
    load("scikit-learn/1.0.1-foss-2021b")
end

if not ( isloaded("Biopython/1.79-foss-2021b") ) then
    load("Biopython/1.79-foss-2021b")
end

if not ( isloaded("matplotlib/3.4.3-foss-2021b") ) then
    load("matplotlib/3.4.3-foss-2021b")
end

if not ( isloaded("networkx/2.6.3-foss-2021b") ) then
    load("networkx/2.6.3-foss-2021b")
end

if not ( isloaded("Pillow/9.1.0-GCCcore-11.2.0") ) then
    load("Pillow/9.1.0-GCCcore-11.2.0")
end

if not ( isloaded("Pysam/0.17.0-GCC-11.2.0") ) then
    load("Pysam/0.17.0-GCC-11.2.0")
end

if not ( isloaded("PyYAML/5.4.1-GCCcore-11.2.0") ) then
    load("PyYAML/5.4.1-GCCcore-11.2.0")
end

if not ( isloaded("pyfaidx/0.7.0-GCCcore-11.2.0") ) then
    load("pyfaidx/0.7.0-GCCcore-11.2.0")
end

if not ( isloaded("R/4.2.0-foss-2021b") ) then
    load("R/4.2.0-foss-2021b")
end

if not ( isloaded("fhR/4.2.0-foss-2021b") ) then
    load("fhR/4.2.0-foss-2021b")
end

if not ( isloaded("freetype/2.11.0-GCCcore-11.2.0") ) then
    load("freetype/2.11.0-GCCcore-11.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCNVKIT", root)
setenv("EBVERSIONCNVKIT", "0.9.9")
setenv("EBDEVELCNVKIT", pathJoin(root, "logs/CNVkit-0.9.9-foss-2021b-R-4.2.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTCNVKIT", "reportlab-3.6.10,pomegranate-0.14.8,CNVkit-0.9.9")
