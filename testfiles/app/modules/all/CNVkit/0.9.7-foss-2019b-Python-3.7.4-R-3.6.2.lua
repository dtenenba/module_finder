help([==[

Description
===========
A command-line toolkit and Python library for detecting copy
 number variants and alterations genome-wide from high-throughput sequencing.


More information
================
 - Homepage: http://github.com/etal/cnvkit


Included extensions
===================
CNVkit-0.9.7, pomegranate-0.13.2, pyfaidx-0.5.9, reportlab-3.5.44
]==])

whatis([==[Description: A command-line toolkit and Python library for detecting copy
 number variants and alterations genome-wide from high-throughput sequencing.]==])
whatis([==[Homepage: http://github.com/etal/cnvkit]==])
whatis([==[URL: http://github.com/etal/cnvkit]==])
whatis([==[Extensions: CNVkit-0.9.7, pomegranate-0.13.2, pyfaidx-0.5.9, reportlab-3.5.44]==])

local root = "/app/software/CNVkit/0.9.7-foss-2019b-Python-3.7.4-R-3.6.2"

conflict("CNVkit")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("Biopython/1.75-foss-2019b-Python-3.7.4") ) then
    load("Biopython/1.75-foss-2019b-Python-3.7.4")
end

if not ( isloaded("matplotlib/3.1.1-foss-2019b-Python-3.7.4") ) then
    load("matplotlib/3.1.1-foss-2019b-Python-3.7.4")
end

if not ( isloaded("networkx/2.4-foss-2019b-Python-3.7.4") ) then
    load("networkx/2.4-foss-2019b-Python-3.7.4")
end

if not ( isloaded("scikit-learn/0.21.3-foss-2019b-Python-3.7.4") ) then
    load("scikit-learn/0.21.3-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Pillow/6.2.1-GCCcore-8.3.0") ) then
    load("Pillow/6.2.1-GCCcore-8.3.0")
end

if not ( isloaded("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4") ) then
    load("Pysam/0.15.4-GCC-8.3.0-Python-3.7.4")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0")
end

if not ( isloaded("R/3.6.2-foss-2019b") ) then
    load("R/3.6.2-foss-2019b")
end

if not ( isloaded("R-bundle-Bioconductor/3.10-foss-2019b-R-3.6.2") ) then
    load("R-bundle-Bioconductor/3.10-foss-2019b-R-3.6.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCNVKIT", root)
setenv("EBVERSIONCNVKIT", "0.9.7")
setenv("EBDEVELCNVKIT", pathJoin(root, "logs/CNVkit-0.9.7-foss-2019b-Python-3.7.4-R-3.6.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.3.4
setenv("EBEXTSLISTCNVKIT", "reportlab-3.5.44,pyfaidx-0.5.9,pomegranate-0.13.2,CNVkit-0.9.7")
