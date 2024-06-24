help([==[

Description
===========
SCENIC+ is a python package to build enhancer driven gene regulatory networks
 (GRNs) using combined or separate single-cell gene expression (scRNA-seq) and single-cell
 chromatin accessibility (scATAC-seq) data.


More information
================
 - Homepage: https://scenicplus.readthedocs.io/


Included extensions
===================
adjustText-0.8, arboreto-0.1.6, autopaths-1.6.0, bidict-0.22.1, cattrs-23.1.2,
certifi-2023.7.22, click-8.1.6, ctxcore-0.2.0, dataclasses_json-0.5.14,
et_xmlfile-1.1.0, fasta-2.3.2, globre-0.1.5, gseapy-0.10.8, kaleido-0.2.1,
lda-2.0.0, loompy-3.0.7, loomxpy-0.4.2, marshmallow-3.20.1, mizani-0.10.0,
mudata-0.2.3, mypy_extensions-1.0.0, natsort-8.4.0, nbsphinx-0.9.2, nbsphinx-
link-1.3.0, ncls-0.0.68, nodeenv-1.8.0, numpy_groupies-0.9.22, numpydoc-1.5.0,
openpyxl-3.1.2, patsy-0.5.3, plotnine-0.12.2, plumbing-2.11.2,
progressbar2-4.2.0, pybiomart-0.2.0, pycisTopic-1.0.2, pyfaidx-0.7.2.1,
pygam-0.9.0, pyproject-metadata-0.7.1, pyranges-0.0.129, python-utils-3.7.0,
requests_cache-1.1.0, retry-0.9.2, scenicplus-1.0.0, sh-2.0.6,
sorted_nearest-0.0.39, sphinx-theme-builder-0.2.0b2, statsmodels-0.14.0,
tmtoolkit-0.12.0, tspex-0.6.3, typing_inspect-0.9.0, tzdata-2023.3, url-
normalize-1.4.3
]==])

whatis([==[Description: SCENIC+ is a python package to build enhancer driven gene regulatory networks
 (GRNs) using combined or separate single-cell gene expression (scRNA-seq) and single-cell
 chromatin accessibility (scATAC-seq) data.]==])
whatis([==[Homepage: https://scenicplus.readthedocs.io/]==])
whatis([==[URL: https://scenicplus.readthedocs.io/]==])
whatis([==[Extensions: adjustText-0.8, arboreto-0.1.6, autopaths-1.6.0, bidict-0.22.1, cattrs-23.1.2, certifi-2023.7.22, click-8.1.6, ctxcore-0.2.0, dataclasses_json-0.5.14, et_xmlfile-1.1.0, fasta-2.3.2, globre-0.1.5, gseapy-0.10.8, kaleido-0.2.1, lda-2.0.0, loompy-3.0.7, loomxpy-0.4.2, marshmallow-3.20.1, mizani-0.10.0, mudata-0.2.3, mypy_extensions-1.0.0, natsort-8.4.0, nbsphinx-0.9.2, nbsphinx-link-1.3.0, ncls-0.0.68, nodeenv-1.8.0, numpy_groupies-0.9.22, numpydoc-1.5.0, openpyxl-3.1.2, patsy-0.5.3, plotnine-0.12.2, plumbing-2.11.2, progressbar2-4.2.0, pybiomart-0.2.0, pycisTopic-1.0.2, pyfaidx-0.7.2.1, pygam-0.9.0, pyproject-metadata-0.7.1, pyranges-0.0.129, python-utils-3.7.0, requests_cache-1.1.0, retry-0.9.2, scenicplus-1.0.0, sh-2.0.6, sorted_nearest-0.0.39, sphinx-theme-builder-0.2.0b2, statsmodels-0.14.0, tmtoolkit-0.12.0, tspex-0.6.3, typing_inspect-0.9.0, tzdata-2023.3, url-normalize-1.4.3]==])

local root = "/app/software/scenicplus/1.0.0-foss-2022b"

conflict("scenicplus")

if not ( isloaded("foss/2022b") ) then
    load("foss/2022b")
end

if not ( isloaded("Python/3.10.8-GCCcore-12.2.0") ) then
    load("Python/3.10.8-GCCcore-12.2.0")
end

if not ( isloaded("pySCENIC/0.12.1-foss-2022b") ) then
    load("pySCENIC/0.12.1-foss-2022b")
end

if not ( isloaded("SciPy-bundle/2023.02-gfbf-2022b") ) then
    load("SciPy-bundle/2023.02-gfbf-2022b")
end

if not ( isloaded("Biopython/1.81-foss-2022b") ) then
    load("Biopython/1.81-foss-2022b")
end

if not ( isloaded("matplotlib/3.7.0-gfbf-2022b") ) then
    load("matplotlib/3.7.0-gfbf-2022b")
end

if not ( isloaded("MACS2/2.2.9.1-foss-2022b") ) then
    load("MACS2/2.2.9.1-foss-2022b")
end

if not ( isloaded("h5py/3.8.0-foss-2022b") ) then
    load("h5py/3.8.0-foss-2022b")
end

if not ( isloaded("plotly.py/5.13.1-GCCcore-12.2.0") ) then
    load("plotly.py/5.13.1-GCCcore-12.2.0")
end

if not ( isloaded("lxml/4.9.2-GCCcore-12.2.0") ) then
    load("lxml/4.9.2-GCCcore-12.2.0")
end

if not ( isloaded("pyBigWig/0.3.22-foss-2022b") ) then
    load("pyBigWig/0.3.22-foss-2022b")
end

if not ( isloaded("Seaborn/0.12.2-foss-2022b") ) then
    load("Seaborn/0.12.2-foss-2022b")
end

if not ( isloaded("scanpy/1.9.3-foss-2022b") ) then
    load("scanpy/1.9.3-foss-2022b")
end

if not ( isloaded("jupyter-server/2.7.0-GCCcore-12.2.0") ) then
    load("jupyter-server/2.7.0-GCCcore-12.2.0")
end

if not ( isloaded("meson-python/0.11.0-GCCcore-12.2.0") ) then
    load("meson-python/0.11.0-GCCcore-12.2.0")
end

if not ( isloaded("Ray-project/2.6.2-foss-2022b") ) then
    load("Ray-project/2.6.2-foss-2022b")
end

if not ( isloaded("BeautifulSoup/4.11.1-GCCcore-12.2.0") ) then
    load("BeautifulSoup/4.11.1-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCENICPLUS", root)
setenv("EBVERSIONSCENICPLUS", "1.0.0")
setenv("EBDEVELSCENICPLUS", pathJoin(root, "logs/scenicplus-1.0.0-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTSCENICPLUS", "pyproject-metadata-0.7.1,kaleido-0.2.1,click-8.1.6,numpy_groupies-0.9.22,loompy-3.0.7,mypy_extensions-1.0.0,typing_inspect-0.9.0,marshmallow-3.20.1,dataclasses_json-0.5.14,loomxpy-0.4.2,mudata-0.2.3,natsort-8.4.0,ncls-0.0.68,sorted_nearest-0.0.39,pyranges-0.0.129,cattrs-23.1.2,url-normalize-1.4.3,requests_cache-1.1.0,pybiomart-0.2.0,arboreto-0.1.6,gseapy-0.10.8,ctxcore-0.2.0,adjustText-0.8,nodeenv-1.8.0,sphinx-theme-builder-0.2.0b2,certifi-2023.7.22,nbsphinx-0.9.2,nbsphinx-link-1.3.0,numpydoc-1.5.0,tzdata-2023.3,mizani-0.10.0,patsy-0.5.3,statsmodels-0.14.0,plotnine-0.12.2,python-utils-3.7.0,progressbar2-4.2.0,pygam-0.9.0,autopaths-1.6.0,retry-0.9.2,plumbing-2.11.2,sh-2.0.6,fasta-2.3.2,pyfaidx-0.7.2.1,lda-2.0.0,globre-0.1.5,et_xmlfile-1.1.0,openpyxl-3.1.2,bidict-0.22.1,tmtoolkit-0.12.0,pycisTopic-1.0.2,tspex-0.6.3,scenicplus-1.0.0")
