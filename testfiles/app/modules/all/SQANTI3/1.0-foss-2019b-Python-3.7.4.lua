help([==[

Description
===========
SQANTI3 is the first module of the Functional IsoTranscriptomics (FIT) framework,
 that also includes IsoAnnot and tappAS. Used for new long read-defined transcriptome.


More information
================
 - Homepage: https://github.com/ConesaLab/SQANTI3


Included extensions
===================
argcomplete-1.12.0, bottle-0.12.18, cached-property-1.5.1, click-7.1.2,
cmakelists_parsing-0.3.1, colorama-0.4.1, conan-1.28.1, deprecation-2.0.6,
distro-1.1.0, fas-0.1.5, fasteners-0.15, monotonic-1.5, node-0.9.25,
node_semver-0.6.1, odict-1.7.0, patch-ng-1.17.4, pluginbase-1.0.0,
plumber-1.6, prettytable-0.7.2, pydantic-1.6.1, PyJWT-1.7.1, pyPEG2-2.15.2,
retrying-1.3.3, semantic-version-2.8.5, sortedcollections-1.2.1,
sortedcontainers-2.2.2, toolz-0.10.0, zope.component-4.5,
zope.deferredimport-4.3.1, zope.deprecation-4.4.0, zope.deprecation-4.4.0,
zope.event-4.4, zope.hookable-5.0.1, zope.interface-5.1.0,
zope.lifecycleevent-4.3, zope.proxy-4.3.2
]==])

whatis([==[Description: SQANTI3 is the first module of the Functional IsoTranscriptomics (FIT) framework,
 that also includes IsoAnnot and tappAS. Used for new long read-defined transcriptome.]==])
whatis([==[Homepage: https://github.com/ConesaLab/SQANTI3]==])
whatis([==[URL: https://github.com/ConesaLab/SQANTI3]==])
whatis([==[Extensions: argcomplete-1.12.0, bottle-0.12.18, cached-property-1.5.1, click-7.1.2, cmakelists_parsing-0.3.1, colorama-0.4.1, conan-1.28.1, deprecation-2.0.6, distro-1.1.0, fas-0.1.5, fasteners-0.15, monotonic-1.5, node-0.9.25, node_semver-0.6.1, odict-1.7.0, patch-ng-1.17.4, pluginbase-1.0.0, plumber-1.6, prettytable-0.7.2, pydantic-1.6.1, PyJWT-1.7.1, pyPEG2-2.15.2, retrying-1.3.3, semantic-version-2.8.5, sortedcollections-1.2.1, sortedcontainers-2.2.2, toolz-0.10.0, zope.component-4.5, zope.deferredimport-4.3.1, zope.deprecation-4.4.0, zope.deprecation-4.4.0, zope.event-4.4, zope.hookable-5.0.1, zope.interface-5.1.0, zope.lifecycleevent-4.3, zope.proxy-4.3.2]==])

local root = "/app/software/SQANTI3/1.0-foss-2019b-Python-3.7.4"

conflict("SQANTI3")

if not ( isloaded("foss/2019b") ) then
    load("foss/2019b")
end

if not ( isloaded("Python/3.7.4-GCCcore-8.3.0") ) then
    load("Python/3.7.4-GCCcore-8.3.0")
end

if not ( isloaded("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4") ) then
    load("SciPy-bundle/2019.10-foss-2019b-Python-3.7.4")
end

if not ( isloaded("scikit-learn/0.21.3-foss-2019b-Python-3.7.4") ) then
    load("scikit-learn/0.21.3-foss-2019b-Python-3.7.4")
end

if not ( isloaded("Biopython/1.75-foss-2019b-Python-3.7.4") ) then
    load("Biopython/1.75-foss-2019b-Python-3.7.4")
end

if not ( isloaded("JupyterLab/1.2.5-foss-2019b-Python-3.7.4") ) then
    load("JupyterLab/1.2.5-foss-2019b-Python-3.7.4")
end

if not ( isloaded("cDNA_Cupcake/12.4.0-foss-2019b-Python-3.7.4") ) then
    load("cDNA_Cupcake/12.4.0-foss-2019b-Python-3.7.4")
end

if not ( isloaded("bx-python/0.8.8-foss-2019b-Python-3.7.4") ) then
    load("bx-python/0.8.8-foss-2019b-Python-3.7.4")
end

if not ( isloaded("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4") ) then
    load("PyYAML/5.1.2-GCCcore-8.3.0-Python-3.7.4")
end

if not ( isloaded("tqdm/4.41.1-GCCcore-8.3.0") ) then
    load("tqdm/4.41.1-GCCcore-8.3.0")
end

if not ( isloaded("Pysam/0.15.3-GCC-8.3.0") ) then
    load("Pysam/0.15.3-GCC-8.3.0")
end

if not ( isloaded("BEDTools/2.29.2-GCC-8.3.0") ) then
    load("BEDTools/2.29.2-GCC-8.3.0")
end

if not ( isloaded("SQLite/3.29.0-GCCcore-8.3.0") ) then
    load("SQLite/3.29.0-GCCcore-8.3.0")
end

if not ( isloaded("gffread/0.11.6-GCCcore-8.3.0") ) then
    load("gffread/0.11.6-GCCcore-8.3.0")
end

if not ( isloaded("tbb/2019_U9-GCCcore-8.3.0") ) then
    load("tbb/2019_U9-GCCcore-8.3.0")
end

if not ( isloaded("Tk/8.6.9-GCCcore-8.3.0") ) then
    load("Tk/8.6.9-GCCcore-8.3.0")
end

if not ( isloaded("unixODBC/2.3.7-foss-2019b") ) then
    load("unixODBC/2.3.7-foss-2019b")
end

if not ( isloaded("XZ/5.2.4-GCCcore-8.3.0") ) then
    load("XZ/5.2.4-GCCcore-8.3.0")
end

if not ( isloaded("ZeroMQ/4.3.2-GCCcore-8.3.0") ) then
    load("ZeroMQ/4.3.2-GCCcore-8.3.0")
end

if not ( isloaded("zlib/1.2.11-GCCcore-8.3.0") ) then
    load("zlib/1.2.11-GCCcore-8.3.0")
end

if not ( isloaded("zstd/1.4.4-GCCcore-8.3.0") ) then
    load("zstd/1.4.4-GCCcore-8.3.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSQANTI3", root)
setenv("EBVERSIONSQANTI3", "1.0")
setenv("EBDEVELSQANTI3", pathJoin(root, "logs/SQANTI3-1.0-foss-2019b-Python-3.7.4-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "SQANTI3-1.0"))
prepend_path("PATH", pathJoin(root, "SQANTI3-1.0/utilities/"))
prepend_path("PYTHONPATH", pathJoin(root, "SQANTI3-1.0"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.7/site-packages"))
-- Built with EasyBuild version 4.2.2
setenv("EBEXTSLISTSQANTI3", "click-7.1.2,semantic-version-2.8.5,pyPEG2-2.15.2,cmakelists_parsing-0.3.1,cached-property-1.5.1,bottle-0.12.18,colorama-0.4.1,deprecation-2.0.6,distro-1.1.0,argcomplete-1.12.0,prettytable-0.7.2,retrying-1.3.3,fas-0.1.5,monotonic-1.5,fasteners-0.15,odict-1.7.0,plumber-1.6,zope.proxy-4.3.2,zope.deferredimport-4.3.1,zope.event-4.4,zope.hookable-5.0.1,zope.interface-5.1.0,zope.deprecation-4.4.0,zope.component-4.5,zope.deprecation-4.4.0,zope.lifecycleevent-4.3,node-0.9.25,node_semver-0.6.1,patch-ng-1.17.4,pluginbase-1.0.0,PyJWT-1.7.1,conan-1.28.1,toolz-0.10.0,pydantic-1.6.1,sortedcontainers-2.2.2,sortedcollections-1.2.1")
