help([==[

Description
===========
dms_tools2 is a software package for analyzing deep mutational scanning data.
 It is tailored to analyze libraries created using comprehensive codon mutagenesis of protein-coding
 of genes.


More information
================
 - Homepage: https://jbloomlab.github.io/dms_tools2/


Included extensions
===================
descartes-1.1.0, dms_tools2-2.6.11, mizani-0.6.0, natsort-7.1.1,
palettable-3.3.0, phydms-2.4.1, plotnine-0.6.0, pybktree-1.1, PyPDF2-2.10.3,
Pyvolve-1.0.3, sympy-1.9, umi_tools-1.1.2, weblogo-3.5.0
]==])

whatis([==[Description: dms_tools2 is a software package for analyzing deep mutational scanning data.
 It is tailored to analyze libraries created using comprehensive codon mutagenesis of protein-coding
 of genes.]==])
whatis([==[Homepage: https://jbloomlab.github.io/dms_tools2/]==])
whatis([==[URL: https://jbloomlab.github.io/dms_tools2/]==])
whatis([==[Extensions: descartes-1.1.0, dms_tools2-2.6.11, mizani-0.6.0, natsort-7.1.1, palettable-3.3.0, phydms-2.4.1, plotnine-0.6.0, pybktree-1.1, PyPDF2-2.10.3, Pyvolve-1.0.3, sympy-1.9, umi_tools-1.1.2, weblogo-3.5.0]==])

local root = "/app/software/dms_tools2/2.6.11-foss-2020b"

conflict("dms_tools2")

if not ( isloaded("foss/2020b") ) then
    load("foss/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("SciPy-bundle/2020.11-foss-2020b") ) then
    load("SciPy-bundle/2020.11-foss-2020b")
end

if not ( isloaded("matplotlib/3.3.3-foss-2020b") ) then
    load("matplotlib/3.3.3-foss-2020b")
end

if not ( isloaded("Biopython/1.78-foss-2020b") ) then
    load("Biopython/1.78-foss-2020b")
end

if not ( isloaded("IPython/7.18.1-GCCcore-10.2.0") ) then
    load("IPython/7.18.1-GCCcore-10.2.0")
end

if not ( isloaded("Pysam/0.16.0.1-GCC-10.2.0") ) then
    load("Pysam/0.16.0.1-GCC-10.2.0")
end

if not ( isloaded("PyStan/2.19.1.1-foss-2020b") ) then
    load("PyStan/2.19.1.1-foss-2020b")
end

if not ( isloaded("Seaborn/0.11.1-foss-2020b") ) then
    load("Seaborn/0.11.1-foss-2020b")
end

if not ( isloaded("aiohttp/3.7.3-GCCcore-10.2.0") ) then
    load("aiohttp/3.7.3-GCCcore-10.2.0")
end

if not ( isloaded("statsmodels/0.12.1-foss-2020b") ) then
    load("statsmodels/0.12.1-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTDMS_TOOLS2", root)
setenv("EBVERSIONDMS_TOOLS2", "2.6.11")
setenv("EBDEVELDMS_TOOLS2", pathJoin(root, "logs/dms_tools2-2.6.11-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
setenv("EBEXTSLISTDMS_TOOLS2", "pybktree-1.1,palettable-3.3.0,mizani-0.6.0,descartes-1.1.0,plotnine-0.6.0,natsort-7.1.1,PyPDF2-2.10.3,weblogo-3.5.0,Pyvolve-1.0.3,sympy-1.9,phydms-2.4.1,umi_tools-1.1.2,dms_tools2-2.6.11")
