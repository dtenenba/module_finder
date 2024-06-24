help([==[

Description
===========
pycistarget is a python module to perform motif enrichment analysis in sets of
 regions with different tools and identify high confidence TF cistromes.


More information
================
 - Homepage: https://pycistarget.readthedocs.io/


Included extensions
===================
cattrs-23.1.2, natsort-8.4.0, nbsphinx-0.9.2, nbsphinx-link-1.3.0,
ncls-0.0.68, numpydoc-1.5.0, pandoc-2.3, plumbum-1.8.2, pybiomart-0.2.0,
pycisTarget-1.0.2, pyranges-0.0.129, requests_cache-1.1.0,
sorted_nearest-0.0.39, sphinx_rtd_theme-1.2.2, sphinxcontrib-jquery-4.1, url-
normalize-1.4.3
]==])

whatis([==[Description: pycistarget is a python module to perform motif enrichment analysis in sets of
 regions with different tools and identify high confidence TF cistromes.]==])
whatis([==[Homepage: https://pycistarget.readthedocs.io/]==])
whatis([==[URL: https://pycistarget.readthedocs.io/]==])
whatis([==[Extensions: cattrs-23.1.2, natsort-8.4.0, nbsphinx-0.9.2, nbsphinx-link-1.3.0, ncls-0.0.68, numpydoc-1.5.0, pandoc-2.3, plumbum-1.8.2, pybiomart-0.2.0, pycisTarget-1.0.2, pyranges-0.0.129, requests_cache-1.1.0, sorted_nearest-0.0.39, sphinx_rtd_theme-1.2.2, sphinxcontrib-jquery-4.1, url-normalize-1.4.3]==])

local root = "/app/software/pycisTarget/1.0.2-foss-2022b"

conflict("pycisTarget")

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

if not ( isloaded("jupyter-server/2.7.0-GCCcore-12.2.0") ) then
    load("jupyter-server/2.7.0-GCCcore-12.2.0")
end

if not ( isloaded("IPython/8.14.0-GCCcore-12.2.0") ) then
    load("IPython/8.14.0-GCCcore-12.2.0")
end

if not ( isloaded("Ray-project/2.6.2-foss-2022b") ) then
    load("Ray-project/2.6.2-foss-2022b")
end

if not ( isloaded("scikit-learn/1.2.1-gfbf-2022b") ) then
    load("scikit-learn/1.2.1-gfbf-2022b")
end

if not ( isloaded("Meson/0.64.0-GCCcore-12.2.0") ) then
    load("Meson/0.64.0-GCCcore-12.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYCISTARGET", root)
setenv("EBVERSIONPYCISTARGET", "1.0.2")
setenv("EBDEVELPYCISTARGET", pathJoin(root, "logs/pycisTarget-1.0.2-foss-2022b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTPYCISTARGET", "natsort-8.4.0,ncls-0.0.68,sorted_nearest-0.0.39,pyranges-0.0.129,plumbum-1.8.2,pandoc-2.3,cattrs-23.1.2,url-normalize-1.4.3,requests_cache-1.1.0,pybiomart-0.2.0,sphinxcontrib-jquery-4.1,sphinx_rtd_theme-1.2.2,nbsphinx-0.9.2,nbsphinx-link-1.3.0,numpydoc-1.5.0,pycisTarget-1.0.2")
