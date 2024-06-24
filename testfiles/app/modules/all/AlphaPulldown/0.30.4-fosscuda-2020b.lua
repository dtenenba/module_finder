help([==[

Description
===========
AlphaPulldown is a Python package that streamlines protein-protein
interaction screens and high-throughput modelling of higher-order oligomers using AlphaFold-Multimer


More information
================
 - Homepage: https://github.com/KosinskiLab/AlphaPulldown


Included extensions
===================
AlphaPulldown-0.30.4, contextlib2-21.6.0, dm-haiku-0.0.4, importlib-
resources-5.12.0, ml-collections-0.1.1, PDBFixer-1.7, py3Dmol-2.0.1.post1,
toolz-0.11.1
]==])

whatis([==[Description: AlphaPulldown is a Python package that streamlines protein-protein
interaction screens and high-throughput modelling of higher-order oligomers using AlphaFold-Multimer]==])
whatis([==[Homepage: https://github.com/KosinskiLab/AlphaPulldown]==])
whatis([==[URL: https://github.com/KosinskiLab/AlphaPulldown]==])
whatis([==[Extensions: AlphaPulldown-0.30.4, contextlib2-21.6.0, dm-haiku-0.0.4, importlib-resources-5.12.0, ml-collections-0.1.1, PDBFixer-1.7, py3Dmol-2.0.1.post1, toolz-0.11.1]==])

local root = "/app/software/AlphaPulldown/0.30.4-fosscuda-2020b"

conflict("AlphaPulldown")

if not ( isloaded("fosscuda/2020b") ) then
    load("fosscuda/2020b")
end

if not ( isloaded("Python/3.8.6-GCCcore-10.2.0") ) then
    load("Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("OpenMM/7.5.0-fosscuda-2020b") ) then
    load("OpenMM/7.5.0-fosscuda-2020b")
end

if not ( isloaded("Kalign/3.3.1-GCCcore-10.2.0") ) then
    load("Kalign/3.3.1-GCCcore-10.2.0")
end

if not ( isloaded("PyYAML/5.3.1-GCCcore-10.2.0") ) then
    load("PyYAML/5.3.1-GCCcore-10.2.0")
end

if not ( isloaded("cctbx-base/2020.8-fosscuda-2020b") ) then
    load("cctbx-base/2020.8-fosscuda-2020b")
end

if not ( isloaded("jax/0.2.19-fosscuda-2020b") ) then
    load("jax/0.2.19-fosscuda-2020b")
end

if not ( isloaded("Biopython/1.78-fosscuda-2020b") ) then
    load("Biopython/1.78-fosscuda-2020b")
end

if not ( isloaded("h5py/3.1.0-fosscuda-2020b") ) then
    load("h5py/3.1.0-fosscuda-2020b")
end

if not ( isloaded("IPython/7.18.1-GCCcore-10.2.0") ) then
    load("IPython/7.18.1-GCCcore-10.2.0")
end

if not ( isloaded("JupyterLab/2.2.8-GCCcore-10.2.0") ) then
    load("JupyterLab/2.2.8-GCCcore-10.2.0")
end

if not ( isloaded("matplotlib/3.3.3-fosscuda-2020b") ) then
    load("matplotlib/3.3.3-fosscuda-2020b")
end

if not ( isloaded("TensorFlow/2.4.1-fosscuda-2020b") ) then
    load("TensorFlow/2.4.1-fosscuda-2020b")
end

if not ( isloaded("tqdm/4.56.2-GCCcore-10.2.0") ) then
    load("tqdm/4.56.2-GCCcore-10.2.0")
end

if not ( isloaded("dm-tree/0.1.5-GCCcore-10.2.0") ) then
    load("dm-tree/0.1.5-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTALPHAPULLDOWN", root)
setenv("EBVERSIONALPHAPULLDOWN", "0.30.4")
setenv("EBDEVELALPHAPULLDOWN", pathJoin(root, "logs/AlphaPulldown-0.30.4-fosscuda-2020b-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.8/site-packages"))
-- Built with EasyBuild version 4.8.1
setenv("EBEXTSLISTALPHAPULLDOWN", "py3Dmol-2.0.1.post1,PDBFixer-1.7,dm-haiku-0.0.4,toolz-0.11.1,importlib-resources-5.12.0,contextlib2-21.6.0,ml-collections-0.1.1,AlphaPulldown-0.30.4")
