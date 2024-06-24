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
altair-4.2.0, args-0.1.0, backports.zoneinfo-0.2.1, binarymap-0.6,
clint-0.5.1, coverage-7.1.0, descartes-1.1.0, dms-variants-1.4.2,
dms_tools2-2.6.10, dmslogo-0.6.2, mamba-0.11.2, mizani-0.6.0, natsort-8.2.0,
nbdime-2.1.1, numpy-1.18.5, palettable-3.3.0, pandas-0.25.3, phydms-2.4.1,
plotnine-0.6.0, pybktree-1.1, PyPDF2-2.10.9, Pyvolve-1.0.3, scipy-1.6.0,
sympy-1.11.1, toolz-0.12.0, typing-extensions-3.10.0.0, umi_tools-1.1.2, vega-
datasets-0.9.0, weblogo-3.5.0
]==])

whatis([==[Description: dms_tools2 is a software package for analyzing deep mutational scanning data.
 It is tailored to analyze libraries created using comprehensive codon mutagenesis of protein-coding
 of genes.]==])
whatis([==[Homepage: https://jbloomlab.github.io/dms_tools2/]==])
whatis([==[URL: https://jbloomlab.github.io/dms_tools2/]==])
whatis([==[Extensions: altair-4.2.0, args-0.1.0, backports.zoneinfo-0.2.1, binarymap-0.6, clint-0.5.1, coverage-7.1.0, descartes-1.1.0, dms-variants-1.4.2, dms_tools2-2.6.10, dmslogo-0.6.2, mamba-0.11.2, mizani-0.6.0, natsort-8.2.0, nbdime-2.1.1, numpy-1.18.5, palettable-3.3.0, pandas-0.25.3, phydms-2.4.1, plotnine-0.6.0, pybktree-1.1, PyPDF2-2.10.9, Pyvolve-1.0.3, scipy-1.6.0, sympy-1.11.1, toolz-0.12.0, typing-extensions-3.10.0.0, umi_tools-1.1.2, vega-datasets-0.9.0, weblogo-3.5.0]==])

local root = "/app/software/dms_tools2/2.6.10-foss-2020b"

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

if not ( isloaded("JupyterLab/2.2.8-GCCcore-10.2.0") ) then
    load("JupyterLab/2.2.8-GCCcore-10.2.0")
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

if not ( isloaded("GitPython/3.1.14-GCCcore-10.2.0") ) then
    load("GitPython/3.1.14-GCCcore-10.2.0")
end

if not ( isloaded("ImageMagick/7.0.10-35-GCCcore-10.2.0") ) then
    load("ImageMagick/7.0.10-35-GCCcore-10.2.0")
end

if not ( isloaded("nodejs/12.19.0-GCCcore-10.2.0") ) then
    load("nodejs/12.19.0-GCCcore-10.2.0")
end

if not ( isloaded("snakemake/6.5.2-foss-2020b") ) then
    load("snakemake/6.5.2-foss-2020b")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTDMS_TOOLS2", root)
setenv("EBVERSIONDMS_TOOLS2", "2.6.10")
setenv("EBDEVELDMS_TOOLS2", pathJoin(root, "logs/dms_tools2-2.6.10-foss-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.5.4
prepend_path("CPATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.8/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTDMS_TOOLS2", "numpy-1.18.5,scipy-1.6.0,pandas-0.25.3,dmslogo-0.6.2,toolz-0.12.0,altair-4.2.0,args-0.1.0,clint-0.5.1,coverage-7.1.0,mamba-0.11.2,nbdime-2.1.1,binarymap-0.6,vega-datasets-0.9.0,dms-variants-1.4.2,pybktree-1.1,palettable-3.3.0,backports.zoneinfo-0.2.1,mizani-0.6.0,descartes-1.1.0,plotnine-0.6.0,natsort-8.2.0,typing-extensions-3.10.0.0,PyPDF2-2.10.9,weblogo-3.5.0,Pyvolve-1.0.3,sympy-1.11.1,phydms-2.4.1,umi_tools-1.1.2,dms_tools2-2.6.10")
